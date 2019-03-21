import React, { Component } from 'react';
import { Title } from './Title';
import ReactTable from 'react-table'
import axios from 'axios'
import { getToken } from '../adalConfig';
import 'core-js/es6/number';
import 'core-js/es6/array'; 

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
                console.log(res.data);
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

    render() {
        return (
            <div>
                <Title title='LOG' />
                {this.renderContent()}
            </div>
        );
    }
    
    //componentDidMount() will give is the response.data from server response
    componentDidMount() {
        axios.get("/api/log", { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                this.setState({logs: res.data});
            })
    }

    renderContent() {
        
        //inside renderContent() we can store the response.data (an array of log objs) 
        //inside a var an object called logs by calling this.state
        const {logs} = this.state;
        const tableData = [];
        
        //building log obj for each log obj returned from server
        for (let i = 0; i < logs.length; i++){
            let log = {};
            log.name = logs[i].LId;
            log.user = logs[i].UId;
            log.date = logs[i].CreatedDate;
            tableData.push(log);
        }
        
        //printing out the contents of tableData which contains log column data 
        console.log(tableData);
        

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
            <ReactTable data={tableData} columns={columns} />
        )
    }

}
