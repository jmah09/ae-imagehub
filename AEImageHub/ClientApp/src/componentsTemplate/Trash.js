import React, { Component } from 'react';
import { Title } from './Title';
import '../index.css';
import Gallery from './custom-photo-gallery';
import SelectedImage from './SelectedImage';
import axios from 'axios'
import {authContext, getCredentials, getToken, isAdmin, adalConfig, getUser} from '../adalConfig';
import {Redirect} from "react-router-dom";
import {adalGetToken} from "react-adal";

export class Trash extends Component {
    constructor(props) {
        super(props);
        this.selectPhoto = this.selectPhoto.bind(this);
        this.toggleSelect = this.toggleSelect.bind(this);

        this.state = {
            photos: [],
            selectAll: false,
            showInfo: false,
            redirect: false,
            redirectLink: '',
            redirectOption: 0,
            admin: false,
            validId: false,
            userId: ""
        };

        this.GetUserTrashedImages = this.GetUserTrashedImages.bind(this);
        this.RecoverSelectedImages = this.RecoverSelectedImages.bind(this);
        this.renderRedirect = this.renderRedirect.bind(this);
        this.deleteSelected = this.deleteSelected.bind(this);

        this.componentDidMount();
        this.GetUserTrashedImages();
    }

    componentDidMount()
    {
        let param = this.props.location.search;
        this.state.validId = param.includes("?"); // todo : temp fix
        this.state.userId = param.substring(1);
        this.state.admin = isAdmin();
        console.log("isAdminTrash ? " + this.state.admin);
        // todo valid id logic [have to change db]
    }
    
    selectPhoto(event, obj) {
        console.log(obj);
        let photos = this.state.photos;
        photos[obj.index].selected = !photos[obj.index].selected;
        this.setState({ photos: photos });
    }

    toggleSelect() {
        let photos = this.state.photos.map((photo, index) => {
            return { ...photo, selected: !this.state.selectAll };
    });
        this.setState({ photos: photos, selectAll: !this.state.selectAll });
    }
    

    deleteSelected() {
        const selected = this.state.photos.filter((value, index, array) => {
            return value.selected;
        });

        let promises = [];

        adalGetToken(authContext, adalConfig.endpoints.api)
            .then(function (token) {
                for (let i = 0; i < selected.length; i++) {
                    promises.push(
                        axios.delete("api/image/" + selected[i].meta.IId,
                            {headers: {'Authorization': "bearer " + token}})
                    )
                }
            })
            .catch(function (err) {
                console.log("couldn't authorize: " + err.response)
            });

        axios.all(promises)
            .then(function (res) {
                window.location.reload();
            })
            .catch(function (err) {
                console.log("Delete failed: " + err.response)
            });
    }
    

    // get Images with the userid
    GetUserTrashedImages() {
        let userid = getUser().profile.oid;


        // TODO -- add check for validId
        if (this.state.admin && this.state.validId) {
            userid = this.state.userId;
        }
        
        const that = this;
        adalGetToken(authContext, adalConfig.endpoints.api)
            .then(function (token) {
                axios.get("/api/user/" + userid + "/images/trashed", {headers: {'Authorization': "bearer " + token}})
                    .then(res => {
                        var images = [];
                        res.data.map((image, index) => {
                            images.push({
                                src: "/api/image/" + image.IId, width: 5, height: 4, alt: image.IId, meta: image
                            });
                        })
                        console.log(res.data);
                        that.setState({photos: images})
                    })
            }).catch(function (err) {
            console.log("Error: Couldn't get token")
        });
    }

    RecoverSelectedImages() {
        const selected = this.state.photos.filter((value, index, array) => {
            return value.selected;
        });

        const notSelected = this.state.photos.filter((value, index, array) => {
            return !value.selected;
        });

        let promises = [];
        
        adalGetToken(authContext, adalConfig.endpoints.api)
            .then(function (token) {
                for (let i = 0; i < selected.length; i++) {
                    selected[i].meta.Trashed = false;
                    promises.push(
                        axios.put("/api/image/" + selected[i].meta.IId, selected[i].meta, 
                        {headers: {'Authorization': "bearer " + token }})
                    )
                }
             
            }).catch(function (err) {
            console.log("Error: Couldn't get : " + err.response)
        });
        
        const that = this;
        axios.all(promises)
            .then(function (res){
                that.setState({
                    photos: notSelected
                });
            })
            .catch(function (err){
                console.log("Recover failed: " + err)
            });
    }

    renderRedirect()
    {
        let redirectLink;

        switch (this.state.redirectOption)
        {
            case 1: // get info
                redirectLink = 'trashinfo';
                if (this.state.redirect)
                {
                    const selected = this.state.photos.filter((value, index, array) => {
                        return value.selected;
                    });
                    return <Redirect to={{
                        pathname: redirectLink,
                        state: {
                            photos: selected,
                            redirectLink: 'trash'
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
    
    onGetInfo = () =>
    {
        const selected = this.state.photos.filter((value) => { return value.selected; });

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
    };

    render() {
        return (
            <div>
            <div>
            <div>
            <Title title='TRASH' />
            <div>{this.renderFunction()}</div>
            </div>
            </div>
            <div id="palcontent">
            {this.renderContent()}
            </div>
            </div>
    );
    }

    // TODO
    renderFunction() {
        if (isAdmin()) {
            return (
                <div class="fnbar">
                    {this.renderRedirect()}
                    <button onClick={this.onGetInfo}>Get Info</button>
                    <button onClick={this.RecoverSelectedImages}>Recover</button>
                    <button onClick={this.deleteSelected}>Delete</button>
                </div>
            )
        } else {
            return (
                <div class="fnbar">
                    {this.renderRedirect()}
                    <button onClick={this.onGetInfo}>Get Info</button>
                    <button onClick={this.RecoverSelectedImages}>Recover</button>
                </div>
            )
        }
    }

    // TODO
    renderContent() {
        return (
            <div class="toggleButton">
            <p>
            <button onClick={this.toggleSelect}>
            Select All
        </button>
        </p>
        <Gallery
        photos={this.state.photos}
        columns={3}
        onClick={this.selectPhoto}
        ImageComponent={SelectedImage}
        margin={4}
        direction={"row"}
        />
        </div>
    );
    }
}
