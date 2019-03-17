import React, { Component } from 'react';
import { Title } from './Title';
import Gallery from './custom-photo-gallery';
import SelectedImage from './SelectedImage';
import hooverdam from './img/hooverdam.jpg';
import clevelanddam from './img/clevelanddam.jpg';
import enguridam from './img/enguridam.jpg';
import threegorgesdam from './img/threegorgesdam.jpg'
import axios from 'axios'
import { getToken } from '../adalConfig';

export class Palette extends Component {
    constructor(props) {
        super(props);
        this.selectPhoto = this.selectPhoto.bind(this);
        this.toggleSelect = this.toggleSelect.bind(this);

        this.state = {
            photos: [] ,
            selectAll: false
        };

        this.GetUserImages = this.GetUserImages.bind(this);
        this.GetUserImages("todo");
    }



      selectPhoto(event, obj) {
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
    GetUserImages(userid) {
        // todo hardcoded for now
        userid = 'todo';
        axios.get("/api/user/" + userid + "/images", { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                var images = [];
                res.data.map((image, index) => {
                    images.push({
                        src: "/api/image/" + image.iId, width: 1, height: 1, alt: image.iId
                    });
                })
                this.setState({photos: images})
            })
    }

    // put images with imageid
    PutImage(imageid, payload) {
        axios.put("/api/image/" + imageid, payload, { headers: { 'Authorization': "bearer " + getToken() } })
            .then(response => {
                console.log(response);
            })
            .catch(error => {
                console.log(error);
            });
    }
    ////////////////////////////////////////////////////////////////////////

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
                <button onClick={this.toggleSelect}>Select All</button>
                <button>Delete</button>
                <button>Submit</button>
                <button>Edit Photo</button>
                <button>Get Info</button>
            </div>
        )
    }

    // TODO
    renderContent() {
        return (
            <div class="toggleButton">
            <Gallery
              photos={this.state.photos}
              columns = {5}
              onClick={this.selectPhoto}
              ImageComponent={SelectedImage}
              direction={"row"}
            />
          </div>
        );
    }
}