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
        const data = [{
        }]

        const columns = [
            {
                Header: 'Name',
                accessor:'name'
            },
            {
                Header: 'Status'
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
