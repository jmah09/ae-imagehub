import React, { Component } from 'react';
import { Title } from './Title';
import ReactTable from 'react-table'
import Gallery from './custom-photo-gallery';
import SelectedImage from './SelectedImage';
import axios from 'axios'
import { getToken } from '../adalConfig';

export class Metadata extends Component {

    constructor(props) {
        super(props);
        
    }
    render() {
        return (
            <div>
                <div>
                    <div>
                        <Title title='MANAGEMENT: METADATA' />
                        <div>{this.renderFunction()}</div>
                    </div>
                </div>
                <div id="palcontent">
                    {this.renderContent()}
                </div>
            </div>
        );
    }
    
    GetTags() {
        axios.get("/api/tag", { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                console.log("successfully grabbed tag!");
                console.log(res);
            })
            .catch(res => {
                console.log("caught error for getting tag!");
                console.log(res);
            })
    };
    
    /*
    AddMedia(string uri) {
        // TODO
    }
    */
    
    // TODO
    renderFunction() {
        return (
            <div class="fnbar">
                <button>Create Project</button>
            </div>
        )
    }

    // TODO
    renderContent() {
        const statusStyle = {
            margin: '0px 0px 0px 70px'
        };
        const data = [
            {
                name: 'Bridge Project',
                status: true,
                mandatory: true,
            },
            {
                name: 'Hoover Dam Project',
                status: true,
                mandatory: false,
            },
        ];


        const columns = [
            {
                Header: 'Name',
                accessor:'name'
            },
            {
                Header: 'Status',
                Cell: () => <span><input type="checkbox" style={statusStyle}></input></span>
            },
            {
                Header: 'Mandatory',
                Cell: () => <span><input type="checkbox" style={statusStyle}></input></span>
            },
        ];

        const sub_columns = columns.slice(0);
        sub_columns.push({
            id: 'button',
            accessor: 'name',
            Cell: ({value}) => (<div class="fnbar">
                <button onClick={()=>{
                    // alert('Updating ADD MEDIA.'); // TODO
                    this.AddMedia(value);
                }}>ADD MEDIA
                </button>
            </div>)
        })
        
        return (
            <div>
                <br />
                <br />
                <ReactTable data={data} columns={columns} />
            </div>
        )
    }

}
