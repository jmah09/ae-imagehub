import React, { Component } from 'react';
import { Title } from './Title';
import ReactTable from 'react-table';
import 'react-table/react-table.css';

export class Project extends Component {

    render() {
        return (
            <div>
                <Title title='MANAGEMENT : PROJECT' />
                {this.renderFunction()}
                {this.renderContent()}
            </div>
        );
    }

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
        }
        const data = [
            {
                name: 'Bridge Project',
                date: '2019/02/26'
            },
            {
                name: 'Hoover Dam Project',
                date: '2019/02/26'
            },
            {
                name: 'Enguri Dam Project',
                date: '2019/02/26'
            },
            {
                name: 'Site C (Cancelled)',
                date: '2019/02/26'
            },
            {
                name: 'Road Project',
                date: '2019/02/26'
            },
    ]

        
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
                Header: 'Date Created',
                accessor: 'date'
            }
        ]
        return (
            <ReactTable data={data} columns={columns} />
        )
    }

}
