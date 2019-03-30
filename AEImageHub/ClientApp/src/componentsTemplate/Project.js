import React, { Component } from 'react';
import { Title } from './Title';
import ReactTable from 'react-table';
import 'react-table/react-table.css';
import axios from 'axios'
import {adalConfig, authContext} from '../adalConfig';
import { Link } from 'react-router-dom';
import {adalGetToken} from "react-adal";

export class Project extends Component {
    
    constructor (props){
        super(props);
        this.state  = {
            projects: {}
        }
    }

    // Jae

    // get all projects
    GetProjects() {
        adalGetToken(authContext, adalConfig.endpoints.api)
            .then(function (token) {
                axios.get("/api/project", { headers: { 'Authorization': "bearer " + token } })
                    .then(res => {
                        return res;
                    })
            }).catch(function (err) {
            console.log("Error: Couldn't get token")
        });
    };

    // get a project with projectname
    GetProject(projectname) {
        adalGetToken(authContext, adalConfig.endpoints.api)
            .then(function (token) {
                axios.get("/api/project/" + projectname, { headers: { 'Authorization': "bearer " + token } })
                    .then(res => {
                        console.log("project: " + JSON.stringify(res));
                        return res ;
                    })
            }).catch(function (err) {
            console.log("Error: Couldn't get token")
        });
    };

    // post a project
    PostProject(payload) {
        adalGetToken(authContext, adalConfig.endpoints.api)
            .then(function (token) {
                axios.post("/api/project", payload, { headers: { 'Authorization': "bearer " + token } })
                    .then(response => {
                        console.log(response);
                    })
                    .catch(error => {
                        console.log(error);
                    });
            }).catch(function (err) {
            console.log("Error: Couldn't get token")
        });
    }

    // put a project with project name
    PutProject(projectname,payload) {
        adalGetToken(authContext, adalConfig.endpoints.api)
            .then(function (token) {
                axios.put("/api/project" + projectname, payload, { headers: { 'Authorization': "bearer " + token } })
                    .then(response => {
                        console.log(response);
                    })
                    .catch(error => {
                        console.log(error);
                    });
            }).catch(function (err) {
            console.log("Error: Couldn't get token")
        });
    }
    ///////////////////////////////////////////////////////////

    componentDidMount() {
        const that = this;
        adalGetToken(authContext, adalConfig.endpoints.api)
            .then(function (token) {
                axios.get("/api/project", { headers: { 'Authorization': "bearer " +  token } })
                    .then(res => {
                        that.setState({projects: res.data})
                    }).catch (err => {
                    console.log(err);
                })
            }).catch(function (err) {
            console.log("Error: Couldn't get token")
        });
    }
    
    
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
        
        
        // get a project info
        this.GetProject('Capilano Bridge');

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
        
        const {projects} = this.state;
        const tableData = [];
        
        for (let i = 0; i < projects.length; i++){
            let project = {};
            project.name =  <Link to={{ pathname: "/" + projects[i].ProjectName }}>{projects[i].ProjectName}</Link>;
            project.date = projects[i].CreatedDate;
            project.description = projects[i].Description;
            tableData.push(project);
        }

        const statusStyle = {
            margin: '0px 0px 0px 70px'
        };
        
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
            },
            {
                Header: 'Description',
                accessor: 'description'
            }
        ]
        return (
            <div><br /><br /><ReactTable data={tableData} columns={columns} /></div>
        )
    }

}
