import React, { Component } from 'react';
import 'cropperjs/dist/cropper.css';
import Cropper from 'react-cropper';
import axios from 'axios';
import { getToken } from '../../adalConfig';
import { Redirect } from 'react-router-dom';

export class ImageEditor extends Component {
    constructor(props) {
        super(props);
        let params = new URLSearchParams(window.location.search);
        let src = "/api/image/" + params.get('src');
        this.state = {
            src: src,
            cropResult: null,
            redirect: false,
        };
        this.cropImage = this.cropImage.bind(this);
        this.onChange = this.onChange.bind(this);
        this.rotateCW = this.rotateCW.bind(this);
        this.rotateCounterCW = this.rotateCounterCW.bind(this);
        this.submitImage = this.submitImage.bind(this);
    }

    onChange(e) {
        e.preventDefault();
        let files;
        if (e.dataTransfer) {
            files = e.dataTransfer.files;
        } else if (e.target) {
            files = e.target.files;
        }
        const reader = new FileReader();
        reader.onload = () => {
            this.setState({ src: reader.result });
        };
        reader.readAsDataURL(files[0]);
    }

    cropImage() {
        if (typeof this.cropper.getCroppedCanvas() === 'undefined') {
            return;
        }
        this.setState({
            cropResult: this.cropper.getCroppedCanvas().toDataURL(),
        });
    }

    submitImage() {    
        var fd = new FormData();
        fd.append('image', this.dataURItoBlob(this.cropper.getCroppedCanvas().toDataURL()), "edited image");
        axios({
            url: '/api/image/',
            method: 'POST',
            data: fd,
            headers: {
                'Content-Type': 'multipart/form-data',
                'Authorization': "bearer " + getToken()
            }
        }).then(res => {
            this.setState({
                redirect: true
            })
        })
    }

    dataURItoBlob(dataURI) {
        // convert base64/URLEncoded data component to raw binary data held in a string
        var byteString;
        if (dataURI.split(',')[0].indexOf('base64') >= 0)
            byteString = atob(dataURI.split(',')[1]);
        else
            byteString = unescape(dataURI.split(',')[1]);

        // separate out the mime component
        var mimeString = dataURI.split(',')[0].split(':')[1].split(';')[0];

        // write the bytes of the string to a typed array
        var ia = new Uint8Array(byteString.length);
        for (var i = 0; i < byteString.length; i++) {
            ia[i] = byteString.charCodeAt(i);
        }

        return new Blob([ia], { type: mimeString });
    }

    rotateCW() {
        this.cropper.rotate(90);
    }

    rotateCounterCW() {
        this.cropper.rotate(-90);
    }

    renderRedirect = () => {
        let redirectLink = 'palette';
        if (this.state.redirect) {
            return <Redirect to={redirectLink} />
        }
    };

    setRedirect = () => {
        this.setState({
            redirect: true
        })
    };
    
    render() {
        return (
            <div>
                {this.renderRedirect()}
                <br />
                <div style={{ width: '100%' }}>
                    <Cropper

                        style={{ height: 650, width: '100%' }}
                        guides={false}
                        src={this.state.src}
                        ref={cropper => { this.cropper = cropper; }}
                    />
                </div>
                <br />
                <button onClick={this.setRedirect} style={{ float: 'right' }}>Cancel</button>
                <button onClick={this.submitImage} style={{ float: 'right' }}>Submit</button>
                <button onClick={this.rotateCW} style={{ float: 'right' }}>Rotate clockwise</button>
                <button onClick={this.rotateCounterCW} style={{ float: 'right' }}>Rotate counter clockwise</button>

                <br />
                <br />
                <br />
                <br />

            </div>
        );
    }
}

