import React, { Component } from 'react';
import { Title } from './Title';
import axios from 'axios';
import {getToken} from '../adalConfig';
import ReactTable from 'react-table';
import 'react-table/react-table.css';

export class User extends Component {

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
                        <Title title='MANAGEMENT: USER' />
                        <div>{this.renderFunction()}</div>
                    </div>
                </div>
                <div id="palcontent">
                    {this.renderContent()}
                </div>
                <div id="palcontent">
                    {this.renderConfirmation()}
                </div>
            </div>
        );
    }

    // TODO
    renderFunction() {
        return (
            <div class="fnbar">
                <button>Make Admin</button>
                <button>Confirm</button>
            </div>
        )
    }

    renderConfirmation() {
        return (
            <div className="fnbar">
                <button>Confirm</button>
            </div>
        )
    };
    
    // TODO
    renderContent() {
        const statusStyle = {
            margin: '0px 0px 0px 70px'
        };
        const data = [
            {
                name: 'Bridge Project',
                email: 'abcd'
            },
            {
                name: 'Hoover Dam Project',
                email: 'efgh'
            },
        ];


        const columns = [
            {
                Header: 'Name',
                accessor:'name'
            },
            {
                Header: 'Email',
                accessor: 'email'
            },
            {
                Header: ' ',
                accessor: null
            },
        ];
        
        
        return (
            <div>
                <br />
                <br />
                <ReactTable data={data} columns={columns} />
            </div>
        )
    }

}
