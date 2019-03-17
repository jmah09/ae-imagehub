import React, { Component } from 'react';
import { Title } from './Title';
import ReactTable from 'react-table';
import 'react-table/react-table.css';
import axios from 'axios'
import { getToken } from '../adalConfig';

export class Project extends Component {

    // Jae

    // get all projects
    GetProjects() {
        axios.get("/api/project", { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                return res;
            })
    };

    // get a project with projectname
    GetProject(projectname) {
        axios.get("/api/project/" + projectname, { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                return res ;
            })
    };

    // post a project
    PostProject(payload) {
        axios.post("/api/project", payload, { headers: { 'Authorization': "bearer " + getToken() } })
            .then(response => {
                console.log(response);
            })
            .catch(error => {
                console.log(error);
            });
    }

    // put a project with project name
    PutProject(projectname,payload) {
        axios.put("/api/project" + projectname, payload, { headers: { 'Authorization': "bearer " + getToken() } })
            .then(response => {
                console.log(response);
            })
            .catch(error => {
                console.log(error);
            });
    }
    ///////////////////////////////////////////////////////////

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
            <div className="fnbar">
                <button>Create Project</button>
            </div>
        )
    }

    // TODO
    renderContent() {

        //Jae's example

        // batches project
        let obj = this.GetProjects();
        
        let type = typeof(obj);
        if (type === "undefined") {
            console.log("project object is undefined");
        }
        console.log(obj);
        
        
        

        // get a project info
        // this.GetProject('bridge%20builder');

        /*
        // Post project
            this.PostProject({
            ProjectName: 'testPro',
            CreatedDate: '2009-05-08 14:40:52',
            Description: 'TESTPRO'
        })

        //Put Project
        this.PutProject('testPro', {
            ProjectName: 'testPro',
            CreatedDate: null,
            Description: 'testppppppp'
        })
        */
        //////////////////////////////////////////

        const statusStyle = {
            margin: '0px 0px 0px 70px'
        };
        
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
                Header: 'Date Created',
                accessor: 'date'
            }
        ]
        return (
            <div><br /><br /><ReactTable data={data} columns={columns} /></div>
        )
    }

}
