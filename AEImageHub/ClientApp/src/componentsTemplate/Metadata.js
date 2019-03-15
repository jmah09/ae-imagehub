import React, { Component } from 'react';
import { Title } from './Title';
import ReactTable from 'react-table'
import Gallery from './custom-photo-gallery';
import SelectedImage from './SelectedImage';
import hooverdam from './img/hooverdam.jpg';
import clevelanddam from './img/clevelanddam.jpg';
import enguridam from './img/enguridam.jpg';
import threegorgesdam from './img/threegorgesdam.jpg'
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

    // TODO
    renderFunction() {
        return (
            <div class="fnbar">
                <button>Make Admin</button>
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
        return (
            <ReactTable data={data} columns={columns} />
        )
    }

}
