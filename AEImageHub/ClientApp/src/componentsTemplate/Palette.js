import React, { Component } from 'react';
import { Title } from './Title';
import '../index.css';
import './palette.css';
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
        };

        this.GetUserImages = this.GetUserImages.bind(this);
        this.TrashSelectedImages = this.TrashSelectedImages.bind(this);


        this.GetUserImages();
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
                this.setState({photos: images})
            })
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
                    {this.renderGetInfo()}
                </div>

                <div>
                    <div>
                        <Title title='PALETTE' />
                        <div>{this.renderFunction()}</div>
                    </div>
                </div>
                <div style={{padding:50}}>
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
    onGetInfo = () => {
        if (this.state.showInfo) {
            this.setState({ showInfo: false });
            return;
        }

        const selected = this.state.photos.filter((value, index, array) => {
            return value.selected;
        });

        if (selected.length > 0 && !this.state.showInfo) {
            this.setState({ showInfo: true });
        }
    }

    handleProjectChange = (e) => {
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

    handleClassificationChange = (e) => {
        let selected = this.state.photos.filter((value, index, array) => {
            return value.selected;
        });

        const unselected = this.state.photos.filter((value, index, array) => {
            return !value.selected;
        });

        let tag = e.target.value;
        console.log("this is the tag: " + tag);
        
        console.log(selected);

        selected.forEach((img) => {
            if (!img.meta.tagLink.includes(tag)) {
                img.meta.tagLink.push(tag)
            }
        });
        
        selected.concat(unselected);

        this.setState({ toSubmit: selected });
    }

    handleGetInfoSubmit = () => {
        this.setState({ photos: this.state.toSubmit });
        this.setState({ toSubmit: [] });
        
        this.setState({ showInfo: false });
    }

    listItems(photo, item) {

        let str = 'TEST';

        if (item === 'classification') {
            str = photo.tagLink[0] || '';

            for (let i = 1; i < photo.tagLink.length; i++) {
                str += photo.tagLink[i];

            }
        } 
        
        else if (item === 'project') {
            str = photo.projectLink[0] || '';

            for (let i = 1; i < photo.projectLink.length; i++) {
                str += photo.projectLink[i];

            }
        }
    
        return str;
    }

    // TODO
    // 1. implement way to check whether there is anything in common
    // 2. list function not working
    // 3. get full list of projects in database
    // 4. get full list of classifications in database
    renderGetInfo() {
        if (this.state.showInfo) {
            const selected = this.state.photos.filter((value, index, array) => {
                return value.selected;
            });

            return (
                <div id="getInfo-container">
                    <div id="getInfo-left">
                    {selected.length > 1
                        ? <img src="http://saveabandonedbabies.org/wp-content/uploads/2015/08/default.png" /> 
                        : <img src={selected[0].src} />}
                    </div>

                    <div id="getInfo-right">
                        <p>TITLE : <br />
                            {selected.length > 1 ? 'Various' : selected[0].meta.imageName}
                        </p>
                        <p>DATE : <br />
                            {selected.length > 1 ? 'Various' : selected[0].meta.uploadedDate}
                        </p>
                        <p>USER : <br />
                            {selected.length > 1 ? 'Various' : selected[0].meta.uId}
                        </p>
                        <p>PROJECT : <br />
                            {selected.length > 1 ? 'Various' : this.listItems(selected[0].meta, 'project')}
                            <br />
                            <select onChange={this.handleProjectChange}>
                                <option name="Project A">Project A</option>
                                <option name="Project B">Project B</option>
                                <option name="Project C">Project C</option>
                                <option name="Project D">Project D</option>
                            </select>
                        </p>
                        <p>CLASSIFICATION : <br />
                            {selected.length > 1 ? 'Various' : this.listItems(selected[0].meta, 'classification')}
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
            <div class="fnbar">
                {this.renderRedirect()}
                <button>Submit</button>
                <button onClick={this.onImageBtnClick}>Edit Photo</button>
                <button onClick={this.onGetInfo}>Get Info</button>
                <button onClick={this.TrashSelectedImages}>Delete</button>
                <button onClick={this.toggleSelect}>Select All</button>
            </div>
        )
    }

    // TODO
    renderContent() {
        return (
            <div class="toggleButton">
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
