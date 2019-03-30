import React, { Component } from 'react';
import { Title } from './Title';
import '../index.css';
import axios from 'axios'
import {adalConfig, authContext, isAdmin} from '../adalConfig';
import {adalGetToken} from "react-adal";

import { Redirect } from 'react-router-dom'
import { Button } from 'semantic-ui-react'
import Lightbox from "react-image-lightbox";
import "react-image-lightbox/style.css";

import SelectedImage from './SelectedImage';
import Gallery from './custom-photo-gallery';

export class LogView extends Component {
    constructor(props) {
        super(props);
        let params = new URLSearchParams(window.location.search);
        console.log(JSON.parse(params.get('src')));
        this.state = {
            images: [],
            redirect: false,
            admin: false,
            validId: false,
            userId: "",
            logid: JSON.parse(params.get('src')),
            photoIndex: 0,
            isOpen: false
        };

        this.getLogImages = this.getLogImages.bind(this);
        this.selectPhoto = this.selectPhoto.bind(this);
        this.toggleSelect = this.toggleSelect.bind(this);
        this.onCancel = this.onCancel.bind(this);
        this.componentDidMount();
        this.handleSubmit = this.handleSubmit.bind(this);
        
        this.getLogImages();
    }
    
    getLogImages() {
        const that = this;
        adalGetToken(authContext, adalConfig.endpoints.api)
            .then(function (token) {
                axios.get("/api/log/view/" + that.state.logid, {headers: {'Authorization': "bearer " + token}}).bind(this)
                    .then(res => {
                        console.log(res.data);
                        let images = [];
                        res.data.map((image, index) => {
                            images.push({
                                src: "/api/image/" + image.IId, width: 1, height: 1, alt: image.IId, meta: image
                            });
                        });

                        // TODO -- question efficiency
                        for (let i = 0; i < this.state.images.length; i++)
                        {
                            for (let j = 0; j < images.length; j++)
                            {
                                if (images[j].src === this.state.images[i].src)
                                {
                                    Object.assign(images[j].meta, this.state.images[i].meta);
                                    break;
                                }
                            }
                        }
                        this.setState({images:images});
                    }).bind(this);
            }).catch(function (err) {
            console.log("Error: Couldn't get token")
        })
    }

    selectPhoto(event, obj) {
        let photos = this.state.images;
        photos[obj.index].selected = !photos[obj.index].selected;
        this.setState({images: photos});
    }

    toggleSelect() {
        let photos = this.state.images.map((photo, index) => {
            return {...photo, selected: !this.state.selectAll};
        });
        this.setState({images: photos, selectAll: !this.state.selectAll});
    }

    componentDidMount() {
        let param = this.props.location.search;
        this.state.userId = param.substring(1, param.indexOf("@"));
        this.state.admin = isAdmin();
        console.log(this.state.admin);
        // todo valid id logic [have to change db]
    }


    render() {
        return (
            <div>

                <div>
                    <div>
                        <Title title='SUBMISSION LOG'/>
                        <div>{this.renderFunction()}</div>
                    </div>
                </div>
                <div style={{padding: 50}}>
                    {this.renderContent()}
                </div>
            </div>
        );
    }

    renderRedirect = () => {
        if (this.state.redirect) {
            return <Redirect to={this.state.redirectLink}/>
        }
    }

    handleSubmit = () =>
    {
        const selected = this.state.images.filter((value) => { return value.selected; });

        for (let i = 0; i < selected.length; i++)
        {
            axios.put("/api/image/" + selected[0].meta.IId, {
                ImageName: null,
                Trashed: null,
                Submitted: false
            })
                .then(response => {
                    console.log(response);
                    this.setState({ redirect: true, redirectLink: "palette"});
                })
                .catch(error => {
                    console.log(error);
                });
        }
    }
    
    onCancel(){
        this.setState({
            redirect: true,
            redirectLink: "log"
        })
    }
    
    renderFunction() {
        const { photoIndex, isOpen } = this.state;
        let images = [];
        this.state.images.map((i) =>
            images.push(i.src)
        );
        console.log(images);
        
        return (
            <div>
            {this.renderRedirect()}
                <div className="fnbar">
                    <Button onClick={this.handleSubmit} primary>Add To Palette</Button>
                    <Button onClick={this.onCancel} primary>Back</Button>
                    <button type="button" onClick={() => this.setState({ isOpen: true })}>
                        Zoom
                    </button>
                    {isOpen && (
                        <Lightbox
                            mainSrc={images[photoIndex]}
                            nextSrc={images[(photoIndex + 1) % images.length]}
                            prevSrc={images[(photoIndex + images.length - 1) % images.length]}
                            onCloseRequest={() => this.setState({ isOpen: false })}
                            onMovePrevRequest={() =>
                                this.setState({
                                    photoIndex: (photoIndex + images.length - 1) % images.length
                                })
                            }
                            onMoveNextRequest={() =>
                                this.setState({
                                    photoIndex: (photoIndex + 1) % images.length
                                })
                            }
                        />
                    )}
                </div>
            
            </div>
        )
    }
    
    renderContent() {
        
        return (
            <div>
                <p>{this.state.images.length + " Image(s) submitted"}</p>
                <Gallery
                    photos={this.state.images}
                    columns={3}
                    onClick={this.selectPhoto}
                    ImageComponent={SelectedImage}
                    margin={4}
                    direction={"row"} />
            </div>
        );
    }
}
