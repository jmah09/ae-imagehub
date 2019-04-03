import React, { Component } from 'react';
import { Title } from '../Title';
import { TextInput } from './form-text-input';
import { Dropdown } from './form-dropdown-list';
import { Redirect } from 'react-router-dom';
import Select from "react-dropdown-select";
import axios from 'axios';

import './get-info.css';

import Lightbox from "react-image-lightbox";
import "react-image-lightbox/style.css";
import { adalGetToken } from "react-adal";
import { authContext, adalConfig } from "../../adalConfig";
import { Tag } from '../../components/backend_test/Tag';

export class GetInfo extends Component {

    constructor(props) {
        super(props);

        this.state = {
            classifications: [],
            projects: [],
            selected_images: props.location.state.photos,

            redirectLink: props.location.state.redirectLink,
            redirectOption: false,
            redirect: false,
            photoIndex: 0,
            isOpen: false
        }
        this.getClassifications();
    }

    //
    // axios request
    //
    getClassifications = () => {
        const that = this;
        adalGetToken(authContext, adalConfig.endpoints.api)
            .then(function (token) {
                axios.get("/api/tag", { headers: { 'Authorization': "bearer " + token } })
                    .then((res) => {
                        for (let tag of res.data) {
                            that.state.classifications.push(tag);
                        }
                    }).catch((err) => { console.log(err); });
            }).catch(function (err) {
                console.log("Error: Couldn't get token")
            });
    }

    //
    // render
    //
    render() {


        return (
            <div>
                <Title title='GET INFO' />
                {this.renderRedirect()}
                {this.renderFunction()}
                {this.renderGetInfo()}

            </div>
        );
    }

    //
    // redirect
    //
    renderRedirect = () => {
        console.log("excuted")
        //window.location.reload();
        if (this.state.redirect) {
            if (this.state.redirectOption) {
                return <Redirect to={{
                    pathname: this.state.redirectLink,
                }} />
            }
            else {
                return <Redirect to={this.state.redirectLink} />;
            }
        }
    };

    renderFunction() {
        const { photoIndex, isOpen } = this.state;
        let images = [];
        this.state.selected_images.map((i) =>
            images.push(i.src)
        );
        return (
            <div className="fnbar">
                <button onClick={this.onCancel}>Cancel</button>
                <button onClick={this.onSave}>Save</button>
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
        );

    }

    renderGetInfo() {
        if (this.state.selected_images.length <= 1) {
            let image = this.state.selected_images[0];

            return (
                <div id="getinfo">
                    <div className="float-left">
                        {this.renderImages()}
                    </div>

                    <div className="float-right">
                        <h2>IMAGE NAME :</h2>
                        <TextInput
                            //                              disabled={selected.length > 1}
                            id='getinfo_name'
                            defaultValue={''}
                            placeholder={image.meta.ImageName}
                        />
                        <br />
                        <h2>UPLOADED DATE :</h2>
                        <TextInput
                            disabled={true}
                            id='getinfo_date'
                            value={image.meta.UploadedDate}
                        />
                        <br />
                        <h2>UPLOADED BY :</h2>
                        <TextInput
                            disabled={true}
                            id='getinfo_user'
                            value={image.meta.U.UserName} // TODO -- GET USERNAME
                        />
                        <br />
                        <h2>CLASSIFICATION :</h2>
                        <Select
                            multi
                            values={image.meta.TagLink}
                            labelField="TagName"
                            valueField="TagName"
                            options={this.state.classifications}
                        />
                        <h2>PROJECT :</h2>
                        <TextInput
                            disabled={true}
                            id='getinfo_proj'
                            placeholder={image.meta.ProjectLink.toString()}
                            onChange={null}
                        />
                    </div>
                </div>
            );
        }
    }

    /*
    handleClassificationsChange = (e) =>
    {
      const images = this.state.selected_images;
//      let tags;
  
      //check if classification exists 
      images.forEach((image) => {
          tags = image.meta.TagLink;
          try
          {
              for (var tagname of e.target.values) {
                  adalGetToken(authContext, adalConfig.endpoints.api)
                      .then(function (token) {
                          axios.post("/api/tag/taglink",
                              { TagName = tagname,
                                IId = img.IId },
                              { headers: { 'Authorization': "bearer " + token } })
                              .then((res) => {
                                  console.log(res);
                              }).catch((err) => { console.log(err); });
                      }).catch(function (err) {
                          console.log("Error: Couldn't get token")
                      });
              }
          }
        let options = e.target.options;
        for (let i = 0; i < options.length; i++){
          let option = options[i].selected;
          if (option && !tags.includes(options[i].value)){
            tags.push(options[i].value)
          }
        }
        this.setState({ photos: photos});
        console.log(this.state.photos);
      });
    };
    */


    // TODO -- SAVE METADATA TO DATABASE INSTEAD
    // TODO -- ^ IF COMPLETED REMOVE ALL INSTANCES OF redirectOption AND RELATED IF STATEMENTS
    onSave = () => {
        let that = this;
        let promise1 = [];
        let promise2 = [];
        let promise3 = [];

        let image = this.state.selected_images[0];
        promise1.push(adalGetToken(authContext, adalConfig.endpoints.api).then((token) => {

            if (this.state.selected_images.length <= 1) {

                // imagename
                let imagename = document.getElementById("getinfo_name").value;

                if (imagename != '') {
                    promise2.push(axios.put("/api/image/" + image.meta.IId,
                        {
                            ImageName: imagename,
                            UId: null,
                            Trashed: null,
                            Submitted: null,
                        },
                        {
                            headers: {
                                'Authorization': "bearer " + token
                            }
                        })
                        .then(() => {
                            image.meta.ImageName = imagename;
                        }).catch((err) => { console.log(err); }));
                }

                // tags
                let selected_tags = Array.from(document.getElementsByClassName("react-dropdown-select-option-label")).map(function (cn) {
                    return cn.innerText;
                });

                promise2.push(axios.delete("/api/tag/taglink/" + image.meta.IId,
                    { headers: { 'Authorization': "bearer " + token } })
                    .then((res) => {
                        console.log("tags on the " + image.meta.ImageName + "are cleaned")
                    }).then(selected_tags.map((tagname) => {
                        (axios.post("/api/tag/taglink", {
                            TagName: tagname,
                            IId: image.meta.IId,
                        }, { headers: { 'Authorization': "bearer " + token } })
                            .then(() => {
                                console.log(tagname + " is added on " + image.meta.ImageName);
                                image.meta.TagLink = selected_tags;
                            }).catch((err) => { console.log(err); }));
                    })));
                return Promise.all(promise2);
            }
        })  .catch((err) => {
                console.log("can't get token");
                console.log(err);
            }));

        Promise.all(promise1).then(function (result) {
            //console.log(result);
            that.setState({
                //redirectOption: true,
                redirect: true

            });
        }).catch(error => {
            console.log(error);
        });
        return <Redirect to={{
            pathname: this.state.redirectLink,
        }} />
    }



    onCancel = () => {
        this.setState({
            //redirectOption: false,
            redirect: true
        });
    };

    renderImages = () => {
        let render = [];

        for (let i = 0; i < this.state.selected_images.length; i++) {
            render.push(
                <div key={i}>
                    <img key={i} src={this.state.selected_images[i].src} />
                    <p style={{ textAlign: 'center' }}>{this.state.selected_images[i].meta.ImageName}</p>
                    <p>Size : X Y</p>
                </div>
            );
        }

        return render;
    }
}