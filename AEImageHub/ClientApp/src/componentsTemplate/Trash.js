import React, { Component } from 'react';
import { Title } from './Title';
import '../index.css';
import Gallery from './custom-photo-gallery';
import SelectedImage from './SelectedImage';
import axios from 'axios'
import { getCredentials, getToken } from '../adalConfig';

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
        };

        this.GetUserTrashedImages = this.GetUserTrashedImages.bind(this);
        this.RecoverSelectedImages = this.RecoverSelectedImages.bind(this);


        this.GetUserTrashedImages();
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

    // get Images with the userid
    GetUserTrashedImages() {
        let token = getToken();
        let userid = getCredentials(token).name;
        axios.get("/api/user/" + userid + "/images/trashed", { headers: { 'Authorization': "bearer " + token } })
            .then(res => {
            var images = [];
        res.data.map((image, index) => {
            images.push({
                src: "/api/image/" + image.iId, width: 5, height: 4, alt: image.iId, meta: image
            });
    })
        console.log(res.data);
        this.setState({ photos: images })
    })
    }

    RecoverSelectedImages() {
        const selected = this.state.photos.filter((value, index, array) => {
            return value.selected;
    })

        const notSelected = this.state.photos.filter((value, index, array) => {
            return !value.selected;
    })

        selected.map((image, index) => {
            image.meta.Trashed = false;
        axios.put("/api/image/" + image.meta.iId, image.meta, { headers: { 'Authorization': "bearer " + getToken() } })
            .then(response => {
            console.log(response);
        this.setState({
            photos: notSelected
        })
    })
    .catch(error => {
            console.log(error);
    });
    })
    }

    render() {
        return (
            <div>
            <div>
            <div>
            <Title title='PALETTE' />
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
        return (
            <div class="fnbar">
            <button>Get Info</button>
        <button onClick={this.RecoverSelectedImages}>Recover</button>
            </div>
    )
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
