import React, { Component } from 'react';
import { Title } from './Title';
import ReactTable from 'react-table'
import axios from 'axios'
import { getToken } from '../adalConfig';

export class Log extends Component {

    // Jae's example

    // get all Logs
    GetLogs() {
        axios.get("/api/log", { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                return res;
            })
    };

    // get a log with logid
    GetLog(logid) {
        axios.get("/api/log/" + logid, { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                return res;
            })
    };
    ///////////////////////////////////////////////////////////

    render() {
        return (
            <div>
                <Title title='LOG' />
                {this.renderContent()}
            </div>
        );
    }

    renderContent() {

        //JAE
        this.GetLogs();
        this.GetLog('log1');
        
        var logs = this.GetLogs();
        var type = typeof(logs);
        if (type === "undefined") {
            console.log("fudge cakes")
        }
        
        var jsonObj = JSON.stringify(this.GetLogs());
        
        if (typeof(jsonObj) === "undefined"){
            console.log("young metro don't trust you");
        }
        
        ////////////////////////


        const columns = [
            {
                Header: 'Name',
                accessor: 'name'
            },
            {
                Header: 'User',
                accessor: 'user'
            },
            {
                Header: 'Date',
                accessor: 'date'
            }

        ]

        const data = [
            {
                name: 'log_00000032_20190226_PR',
                user: 'Peter Rosenberg',
                date: '2019/02/26'
            },
            {
                name: 'log_00000022_20190226_TG',
                user: 'Thadeus Gamelthorpe',
                date: '2019/02/26'
            },
            {
                name: 'log_00000034_20190210_JC',
                user: 'Jesus Christ',
                date: '2019/02/10'
            },
            {
                name: 'log_00000045_20190210_JT',
                user: 'Justin Timberlake',
                date: '2019/02/10'
            },
            {
                name: 'log_00000069_20190209_RZ',
                user: 'Robert Zhang',
                date: '2019/02/09'
            },
            {
                name: 'log_00000045_20190129_KN',
                user: 'Kim Nishimura',
                date: '2019/01/29'
                
            },
            {
                name: 'log_00000043_20190123_BO',
                user: 'Barak Obama',
                date: '2019/01/23ç'
            }
        ]
        return (
            <ReactTable data={data} columns={columns} />
        )
    }

}
