import React, { Component } from 'react';
import { Title } from './Title';
import ReactTable from 'react-table'
import axios from 'axios'
import { getToken } from '../adalConfig';
import 'core-js';
import {Link} from "react-router-dom";

export class Log extends Component {
    
    constructor(props){
        super(props);
        this.state = {
            logs: {},
        }
    }

    // Jae's example

    // get all Logs
    static GetLogs() {
        axios.get("/api/log", { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                return res;
            })
    };

    // get a log with logid
    static GetLog(logid) {
        axios.get("/api/log/" + logid, { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                return res;
            })
    };
    ///////////////////////////////////////////////////////////
    
    //componentDidMount() will give is the response.data from server response
    componentDidMount() {
        axios.get("/api/log", { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                this.setState({logs: res.data});
            })
    }

    render() {
        return (
            <div>
                <Title title='LOG' />
                {this.renderContent()}
            </div>
        );
    }
    
    renderContent() {
        
        //inside renderContent() we can store the response.data (an array of log objs) 
        //inside a var an object called logs by calling this.state
        const {logs} = this.state;
        const tableData = [];
        //building log obj for each log obj returned from server
        for (let i = 0; i < logs.length; i++){
            let log = {};
            // change the log name format to date_time_user
            log.name = <a href={"/logview?src=" + JSON.stringify(logs[i].LId)}>{logs[i].LId}</a>
                 //<Link to={{ pathname: "/logview?src=" + JSON.stringify(logs[i].LId)}}>{logs[i].LId}</Link>;
            log.user = logs[i].U.UserName;
            log.date = logs[i].CreatedDate;
            tableData.push(log);
        }
        
        //printing out the contents of tableData which contains log column data
        const columns = [
            {
                Header: 'Name',
                accessor: 'name'
            },
            {
                Header: 'User',
                accessor: 'user',
            },
            {
                Header: 'Date Created',
                accessor: 'date'
            }
        ];
        
        return (
            <ReactTable data={tableData} columns={columns} defaultSorted={[{id : "date", desc: true}]}/>
        )
    }

}
