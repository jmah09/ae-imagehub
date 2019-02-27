import React, { Component } from 'react';
import { Title } from './Title';
import ReactTable from 'react-table'

export class Log extends Component {

    render() {
        return (
            <div>
                <Title title='LOG' />
                {this.renderContent()}
            </div>
        );
    }

    // TODO
    renderContent() {
        const columns = [
            {
                Header: 'Name',
                accessor: 'name'
            },
            {
                Header: 'User',
                accessor: 'user'
            }

        ]

        const data = [
            {
                name: 'log_00000032_20190226_PR',
                user: 'Peter Rosenberg'
            },
            {
                name: 'log_00000022_20190226_TG',
                user: 'Thadeus Gamelthorpe'
            },
            {
                name: 'log_00000034_20190210_JC',
                user: 'Jesus Christ'
            },
            {
                name: 'log_00000045_20190210_JT',
                user: 'Justin Timberlake'
            },
            {
                name: 'log_00000069_20190209_RZ',
                user: 'Robert Zhang'
            },
            {
                name: 'log_00000045_20190129_KN',
                user: 'Kim Nishimura'
                
            },
            {
                name: 'log_00000043_20190123_BO',
                user: 'Barak Obama'
            }
        ]
        return (
            <ReactTable data={data} columns={columns} />
        )
    }

}
