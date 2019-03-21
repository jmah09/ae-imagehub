import React, { Component } from 'react';
import { Title } from './Title';
import '../index.css';
import Gallery from './custom-photo-gallery';
import SelectedImage from './SelectedImage';
import axios from 'axios'
import { getCredentials, getToken } from '../adalConfig';
import { Redirect } from 'react-router-dom'

export class Palette extends Component {
    constructor(props) {
        super(props);
        this.selectPhoto = this.selectPhoto.bind(this);
        this.toggleSelect = this.toggleSelect.bind(this);

        this.state = {
            photos: [] ,
            selectAll: false,
            showInfo: false,
            redirect: false,

            toSubmit: []
        };

        this.GetUserImages = this.GetUserImages.bind(this);
        this.TrashSelectedImages = this.TrashSelectedImages.bind(this);

        this.handleNameChange = this.handleNameChange.bind(this);
        this.handleGetInfoSubmit = this.handleGetInfoSubmit.bind(this);

        this.GetUserImages();
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
    GetUserImages() {
        // todo hardcoded for now
        let userid = getCredentials().name;
        axios.get("/api/user/" + userid + "/images", { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                var images = [];
                res.data.map((image, index) => {
                    images.push({
                        src: "/api/image/" + image.iId, width: 5, height: 4, alt: image.iId , meta : image
                    });
                })
                console.log(res.data);
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

    TrashSelectedImages() {
        const selected = this.state.photos.filter((value, index, array) => {
            return value.selected;
        })

        const notSelected = this.state.photos.filter((value, index, array) => {
            return !value.selected;
        })

        selected.map((image, index) => {
            image.meta.Trashed = true;
            axios.put("/api/image/" + image.meta.iId, image.meta, { headers: { 'Authorization': "bearer " + getToken() } })
                .then(response => {
                    console.log(response);
                })
                .catch(error => {
                    console.log(error);
                });
        })

        this.setState({
            photos: notSelected
        })
    }

    render() {
        return (
            <div>
            <div>
                <div>
                    <div>{this.renderGetInfo()}</div>
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

    renderRedirect = () => {
        let redirectLink = 'edit?src=' + this.state.editImageLink;
        if (this.state.redirect) {
            return <Redirect to={redirectLink} />
        }
    }


    onImageBtnClick = () => {
        const selected = this.state.photos.filter((value, index, array) => {
            return value.selected;
        })

        if (selected.length != 1) {
            alert("select exactly one image");
        } else {
            this.state.editImageLink = selected[0].meta.iId;
            this.setState({
                redirect: true
            })
        }
    }

    // TODO
    // GET INFO
    onGetInfo() {
        if (this.state.showInfo) {
            this.setState({ showInfo: false });
            return;
        }

        // TODO : fix to simply find a single instance of selected
        const selected = this.state.photos.filter((value, index, array) => {
            return value.selected;
        });

        if (selected.length > 0 && !this.state.showInfo) {
            this.setState({ showInfo: true });
        }
    }

    // TODO : double check on projectLink and why it's an array
    handleProjectChange(e) {
        let selected = this.state.photos.filter((value, index, array) => {
            return value.selected;
        });

        const unselected = this.state.photos.filter((value, index, array) => {
            return !value.selected;
        });

        selected.forEach((img) => { img.projectLink = [e.target.value] });

        selected.concat(unselected);

        this.setState({ toSubmit: selected });
    }

    handleClassificationChange(e) {
        let selected = this.state.photos.filter((value, index, array) => {
            return value.selected;
        });

        const unselected = this.state.photos.filter((value, index, array) => {
            return !value.selected;
        });

        let tag = e.target.value;

        selected.forEach((img) => {
            if (!img.tagLink.includes(tag)) {
                img.tagLink.push(tag)
            }
        });

        selected.concat(unselected);

        this.setState({ toSubmit: selected });
    }

    handleGetInfoSubmit() {
        this.setState({ photos: this.state.toSubmit });
        this.setState({ toSubmit: [] });
        
        this.setState({ showInfo: false });
    }

    listItems(array) {
        let str = array.shift() || '';
    
        array.forEach((item) => { str += ", " + item });
    
        return str;
    }

    // TODO
    // 1. implement way to check whether there is anything in common
    // 3. get full list of projects in database
    // 4. get full list of classifications in database
    renderGetInfo() {
        if (this.state.showInfo) {
            // TODO 1
            const selected = this.state.photos.filter((value, index, array) => {
                return value.selected;
            });

            return (
                <div id="getInfo-container">
                    <div id="getInfo-left">
                    {selected.length > 1
                        ? <img src="http://saveabandonedbabies.org/wp-content/uploads/2015/08/default.png" /> 
                        : <img src={selected.photo.src} />}
                    </div>

                    <div id="getInfo-right">
                        <p>TITLE : <br />
                            {selected.length > 1 ? 'Various' : selected.imageName}
                        </p>
                        <p>DATE : <br />
                            {selected.length > 1 ? 'Various' : selected.uploadedDate}
                        </p>
                        <p>USER : <br />
                            {selected.length > 1 ? 'Various' : selected.uId}
                        </p>
                        <p>PROJECT : <br />
                            {selected.length > 1 ? 'Various' : this.listItems(selected.projectLink)}
                            <select onChange={this.handleProjectChange}>
                                <option name="Project A">Project A</option>
                                <option name="Project B">Project B</option>
                                <option name="Project C">Project C</option>
                                <option name="Project D">Project D</option>
                            </select>
                        </p>
                        <p>CLASSIFICATION : <br />
                            {selected.length > 1 ? 'Various' : this.listItems(selected.tagLink)}
                            <select onChange={this.handleClassificationChange}>
                                <option name="Bridge">Bridge</option>
                                <option name="Dam">Dam</option>
                                <option name="River">River</option>
                                <option name="Road">Road</option>
                            </select>
                        </p>
                        <br /><br />
                        <button onSubmit={this.handleGetInfoSubmit}>Save</button>
                        <br /><br />
                        <button onClick={this.onGetInfo}>Cancel</button>
                    </div>
                </div>
            );
        }

        return null;
    }

    // TODO
    renderFunction() {
        return (
            <div className ="fnbar">
                {this.renderRedirect()}
                <button onClick={this.toggleSelect}>Select All</button>
                <button onClick={this.TrashSelectedImages}>Delete</button>
                <button>Submit</button>
                <button onClick={this.onImageBtnClick}>Edit Photo</button>
                <button>Get Info</button>
                <br />
                <br />
            </div>
        )
    }

    // TODO
    renderContent() {
        return (
            <div className="toggleButton">
                <Gallery
                    photos={this.state.photos}
                    columns={3}
                    onClick={this.selectPhoto}
                    ImageComponent={SelectedImage}
                    margin={4}
                    direction={"row"} />
            </div>
        );
    }
}