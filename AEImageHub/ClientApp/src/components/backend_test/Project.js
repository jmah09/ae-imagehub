import React, { Component } from 'react';
import axios from 'axios'

export class Project extends Component {
    displayName = Project.name

    constructor(props) {
        super(props);
    }

    GetProject() {
        axios.get("/api/project/bridge%20builder")
            .then(response => {
                console.log(response.data);
                return;
            })
    }

    GetProjects() {
        axios.get("/api/project")
            .then(res => {
                return;
            })
    };

    PostProject() {
        axios.post("/api/project", {
            ProjectName: 'testPro',
            CreatedDate: '2009-05-08 14:40:52',
            Description: 'TESTPRO'
        })
            .then(response => {
                console.log(response);
            })
            .catch(error => {
                console.log(error);
            });
    }

    PutProject() {
        axios.put("/api/project", {
            ProjectName: 'testPro',
            CreatedDate: '2009-05-08 14:40:52',
            Description: 'TESTPROOOOOOOOOOO'
        })
            .then(response => {
                console.log(response);
            })
            .catch(error => {
                console.log(error);
            });
    }

    DeleteProject() {
        axios.delete("/api/project/testPro")
            .then(response => {
                console.log(response);
            })
            .catch(error => {
                console.log(error);
            });
    }

    render() {
        return (
            <div>
                <br/>
                <button onClick={this.GetProject}>GetProject</button><br />
                <button onClick={this.GetProjects}>GetProjects</button><br />
                <button onClick={this.PostProject}>PostProject</button><br/>
                <button onClick={this.PutProject}>PutProject</button><br />
                <button onClick={this.DeleteProject}>DeleteProject</button><br />
            </div>
        );
    }
}