import React, { Component } from 'react';
import { Title } from './Title';
import ReactTable from 'react-table';
import 'react-table/react-table.css';
import axios from 'axios'
import { getToken } from '../adalConfig';

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
        axios.get("/api/project", { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                return res;
            })
    };

    // get a project with projectname
    GetProject(projectname) {
        axios.get("/api/project/" + projectname, { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                console.log("project: " + JSON.stringify(res));
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

    componentDidMount() {
        axios.get("/api/project", { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                this.setState({projects: res.data})
            }).catch (err => {
            console.log(err);
        })
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
            project.name = projects[i].ProjectName;
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
