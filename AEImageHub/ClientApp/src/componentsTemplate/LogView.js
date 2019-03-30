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
        this.onCancel = this.onCancel.bind(this);
        this.componentDidMount();
        this.getLogImages();
    }
    
    getLogImages(){
        const that = this;
        adalGetToken(authContext, adalConfig.endpoints.api)
            .then(function (token) {
                axios.get("/api/log/view/" + that.state.logid, { headers: { 'Authorization': "bearer " + token } })
                    .then(res => {
                        console.log(res.data);
                        let images = [];
                        for(let i = 0 ; i < res.data.length; i++){
                            images.push(res.data[i].IId);
                        }
                        that.setState({images:images});
                    })
            }).catch(function (err) {
            console.log("Error: Couldn't get token")
        });
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
        let redirectLink = 'log';
        if (this.state.redirect) {
            return <Redirect to={redirectLink}/>
        }
    }
    
    onCancel(){
        this.setState({
            redirect: true
        })
    }
    
    renderFunction() {
        const { photoIndex, isOpen } = this.state;
        let images = [];
        this.state.images.map((i) =>
            images.push("/api/image/" + i)
        );
        console.log(images);
        
        return (
            <div>
            {this.renderRedirect()}
                <div className="fnbar">
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
        const listItems = this.state.images.map((i) =>
            <li><img src={"/api/image/" + i} alt="" className="img-responsive" width="800px" height="800px"/><br/></li>
        );
        
        return (
            <div>
                <p>{this.state.images.length + " Image(s) submitted"}</p>
                <ul>{listItems}</ul>
            </div>
        );
    }
}
