import React, { Component } from 'react';
import { Title } from './Title';
import axios from 'axios';
import {getUser, isAdmin, adalConfig, authContext, isIE} from '../adalConfig';
import {adalGetToken} from "react-adal";
import Gallery from './custom-photo-gallery';
import SelectedImage from './SelectedImage';
import { Redirect } from 'react-router-dom';

import '../index.css';

export class Palette extends Component {

    constructor(props)
    {

        super(props);

        this.state = {
            photos: [],
            selectAll: false,
            showInfo: false,
            redirect: null,
            admin: false,
            validId: false,
            userId: '',
            redirectLink: '',
            redirectOption: 0
        };

        if (props.location.state && Array.isArray(props.location.state.photos))
        {
            this.state.photos = props.location.state.photos;
        }

        this.componentDidMount();

        this.selectPhoto = this.selectPhoto.bind(this);
        this.toggleSelect = this.toggleSelect.bind(this);
        this.GetUserImages = this.GetUserImages.bind(this);
        this.TrashSelectedImages = this.TrashSelectedImages.bind(this);

        this.renderRedirect = this.renderRedirect.bind(this);

        this.GetUserImages();
    }

    //
    // axios request
    //
    componentDidMount()
    {
        let param = this.props.location.search;
        this.state.validId = param.includes("?"); // todo : temp fix
        this.state.userId = param.substring(1);
        this.state.admin = isAdmin();
        console.log("isAdmin ? " + this.state.admin);
        // todo valid id logic [have to change db]
    }


    selectPhoto(event, obj) {
        let photos = this.state.photos;
        photos[obj.index].selected = !photos[obj.index].selected;
        this.setState({photos: photos});
    }

    toggleSelect() {
        let photos = this.state.photos.map((photo, index) => {
            return {...photo, selected: !this.state.selectAll};
        });
        this.setState({photos: photos, selectAll: !this.state.selectAll});
    }

    // get Images with the userid
    GetUserImages()
    {
        // TODO -- hardcoded for now
        let userid = getUser().profile.oid;

        // TODO -- add check for validId
        if (this.state.admin && this.state.validId)
        {
            console.log("ok");
            userid = this.state.userId;
        }

        var images = [];

        const that = this;
        adalGetToken(authContext, adalConfig.endpoints.api)
            .then(function (token) {
                axios.get("/api/user/" + userid + "/images", { headers: { 'Authorization': "bearer " + token } })
                    .then(res => {

                        res.data.map((image, index) => {
                            images.push({
                                src: "/api/image/" + image.IId, width: 5, height: 4, alt: image.IId, meta: image
                            });
                        });

                        // TODO -- question efficiency
                        // todo -- what is this doing here
                     /*   for (let i = 0; i < that.state.photos.length; i++)
                        {
                            for (let j = 0; j < images.length; j++)
                            {
                                if (images[j].src === that.state.photos[i].src)
                                {
                                    Object.assign(images[j].meta, that.state.photos[i].meta);
                                    break;
                                }
                            }
                        }*/

                        that.setState({photos: images})
                    })
            }).catch(function (err) {
            console.log("Error: Couldn't get token")
        });
        
    }


    TrashSelectedImages() {
        const selected = this.state.photos.filter((value) => {
            return value.selected;
        });
        const notSelected = this.state.photos.filter((value) => {
            return !value.selected;
        });
        let promises = [];

        const that = this;
        adalGetToken(authContext, adalConfig.endpoints.api)
            .then(function (token) {
                selected.map(function (image) {
                    image.meta.Trashed = true;
                    promises.push(
                        axios.put("/api/image/" + image.meta.IId, image.meta,
                            {headers: {'Authorization': "bearer " + token}})
                    )
                });
            }).catch(function (err) {
            console.log("Error: Couldn't get token")
        });


        axios.all(promises)
            .then(function (){
                that.setState({
                    photos: notSelected
                });
                // todo test
                if (isIE() && selected.length > 0) {
                    window.location.reload();
                }
            })
            .catch(function (err){
                console.log(err.response);
            });
    }
    

    //
    // get info
    //
    onGetInfo = (e) =>
    {
        const selected = this.state.photos.filter((value) => { return value.selected; });
        console.log(selected);
        
        if (selected.length > 0 && !this.state.showInfo)
        {
            this.setState({
                redirectLink: '',
                redirectOption: 1,
                redirect: true
            });
            return;
        }

        alert("Please select image(s).");
    }

    //
    // edit image
    //
    onEditImage = () =>
    {
        const selected = this.state.photos.filter((value, index, array) => {
            return value.selected;
        });
    
        if (selected.length === 1)
        {
            this.setState({ 
                redirectLink: selected[0].meta.IId,
                redirectOption: 2,
                redirect: true
            });
            return;
        }

        alert("Please select one image.");
    }

    //
    // render
    //
    render()
    {
        return (
            <div>
                <Title title='PALETTE' />
                {this.renderFunction()}
                {this.renderContent()}
            </div>
        );
    }

    renderRedirect()
    {
        let redirectLink;

        switch (this.state.redirectOption)
        {
            case 1: // get info
                redirectLink = 'getinfo';
                if (this.state.redirect)
                {
                    const selected = this.state.photos.filter((value, index, array) => {
                        return value.selected;
                    });
                    return <Redirect to={{
                        pathname: redirectLink,
                        state: {
                            photos: selected,
                            redirectLink: 'palette'
                        }}} />;
                }
                break;
            case 2: // edit image
                redirectLink = 'edit?src=' + this.state.redirectLink;
                break;
            case 3:
                redirectLink = 'submit?src=' + this.state.redirectLink;
        }

        if (this.state.redirect)
        {
            return <Redirect to={redirectLink} />;
        }
    }
    
    

    onSubmitBtnClick = () => {
        const selected = this.state.photos.filter((value, index, array) => {
            return value.selected;
        })

        if (selected.length <= 0) {
            alert("please select at least one image");
        } else {
            this.setState({
                redirectLink: encodeURIComponent(JSON.stringify(selected)),
                redirectOption: 3,
                redirect: true
            });
        }
    }
    
    
    renderFunction()
    {
        return (
            <div className="fnbar">
                {this.renderRedirect()}
                <button onClick={this.onSubmitBtnClick}>Submit</button>
                <button onClick={this.onEditImage}>Edit Image</button>
                <button onClick={this.onGetInfo}>Get Info</button>
                <button onClick={this.TrashSelectedImages}>Delete</button>
                <button onClick={this.toggleSelect}>Select All</button>
            </div>
        );
    }

    renderContent()
    {
        return (
            <div className="toggleButton">
                <Gallery
                    photos={this.state.photos}
                    columns={4}
                    onClick={this.selectPhoto}
                    ImageComponent={SelectedImage}
                    margin={4}
                    direction={"row"} />
            </div>
        );
    }
}
