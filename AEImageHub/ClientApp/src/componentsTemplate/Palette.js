import React, { Component } from 'react';
import { Title } from './Title';
import Gallery from 'react-photo-gallery';
import SelectedImage from './SelectedImage';
import hooverdam from './img/hooverdam.jpg';
import clevelanddam from './img/clevelanddam.jpg';
import enguridam from './img/enguridam.jpg';
import threegorgesdam from './img/threegorgesdam.jpg'
import axios from 'axios'
import { getToken } from '../adalConfig';

var photos = [
    {
        src: hooverdam, width: 1, height: 1, alt: "dam"
    },
    {
        src: clevelanddam, width: 1, height: 1, alt: "dam"
    },
    {
        src: hooverdam, width: 1, height: 1, alt: "dam"
    },
    {
        src: hooverdam, width: 1, height: 1, alt: "dam"
    },
    {
        src: hooverdam, width: 1, height: 1, alt: "dam"
    },
    {
        src: hooverdam, width: 1, height: 1, alt: "dam"
    },
    {
        src: hooverdam, width: 1, height: 1, alt: "dam"
    },
    {
        src: hooverdam, width: 1, height: 1, alt: "dam"
    },
    {
        src: hooverdam, width: 1, height: 1, alt: "dam"
    },
    {
        src: enguridam, width: 1, height: 1, alt: "dam"
    },
    {
        src: threegorgesdam, width: 1, height: 1, alt: "dam"
    },
    {
        src: enguridam, width: 1, height: 1, alt: "dam"
    },
    {
        src: enguridam, width: 1, height: 1, alt: "dam"
    },
    {
        src: enguridam, width: 1, height: 1, alt: "dam"
    },
    {
        src: enguridam, width: 1, height: 1, alt: "dam"
    },
    {
        src: threegorgesdam, width: 1, height: 1, alt: "dam"
    }
]
export class Palette extends Component {
    constructor(props) {
        super(props);
        this.state = { photos: photos, selectAll: false };
        this.selectPhoto = this.selectPhoto.bind(this);
        this.toggleSelect = this.toggleSelect.bind(this);
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

    //Jae

    // get Images with the userid
    GetUserImages(userid) {
        axios.get("/api/user/" + userid + "/images", { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                return;
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
                <button>Get Info</button>
                <button>Edit Photo</button>
                <button>Submit</button>
                <button>Delete</button>
            </div>
        )
    }

    // TODO
    renderContent() {

        // Jae

        // batch images
        this.GetUserImages('userA');
        // trash image
        this.PutImage('hashA', {
            ImageName: null,
            Trashed: 1,
            Submitted: null
        });
        // get info
        this.GetImage()
        ////////////////////////////////
        return (
            <div class="toggleButton">
            <p>
              <button onClick={this.toggleSelect}>
                Select All
              </button>
            </p>
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