import React, { Component } from 'react';
import { Title } from './Title';
import ReactTable from 'react-table';
import 'react-table/react-table.css';
import axios from 'axios'
import { adalConfig, authContext } from '../adalConfig';
import { Link } from 'react-router-dom';
import { adalGetToken } from "react-adal";

export class Project extends Component {

  constructor(props) {
    super(props);
    this.state = {
      projects: {},
      showAdd: false,
      showEdit: false,
      ProjectName: "",
      CreatedDate: "",
      Description: "",
      Active: true,
    };

    this.handleChange = this.handleChange.bind(this);
    this.PostProject = this.PostProject.bind(this);
    this.PutProject = this.PutProject.bind(this);
  }

  handleChange(event) {
    const target = event.target;
    const value = target.type === 'checkbox' ? target.checked : target.value;
    const name = target.name;

    this.setState({
      [name]: value
    });
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
            return res;
          })
      }).catch(function (err) {
        console.log("Error: Couldn't get token")
      });
  };

  // post a project
  PostProject(event) {
    event.preventDefault();
    let date = new Date(Date.now());
    const that = this;

    if (this.state.ProjectName === "") return alert("Please fill in the Project Name");
    this.setState({ CreatedDate: date.toDateString() });

    adalGetToken(authContext, adalConfig.endpoints.api)
      .then(function (token) {
        let payload = that.state;
        axios.post("/api/project", payload, { headers: { 'Authorization': "bearer " + token } })
          .then(response => {
            console.log(response);
            window.location.reload();
          })
          .catch(error => {
            console.log(error);
            alert("The Project Name already exists!")
          });
      }).catch(function (err) {
        console.log("Error: Couldn't get token")
      });
  }

  // put a project with project name
  PutProject(event) {
    event.preventDefault();
    const that = this;
    let project = this.state.projects.find(function (project) {
      return project.ProjectName === that.state.ProjectName;
    });

    
    if (project === undefined || project === null) return alert("Project Doesn't Exist");
    
    this.setState({ CreatedDate: null });
    if (this.state.Description === "") {
      
      this.setState({Description : project.Description});
    }

    adalGetToken(authContext, adalConfig.endpoints.api) 
      .then(function (token) {
        axios.put("/api/project/" + that.state.ProjectName, that.state, 
            { headers: { 'Authorization': "bearer " + token } })
          .then(response => {
            window.location.reload(); // todo: maybe use setState for performance
          })
          .catch(error => {
            console.log(error);
          });
      }).catch(function (err) {
        console.log("Error: Couldn't get token")
      });
  }

  searchProject(projectName) {
    this.props.history.push("/search?project=" + projectName);
  }

  ///////////////////////////////////////////////////////////

  componentDidMount() {
    const that = this;
    adalGetToken(authContext, adalConfig.endpoints.api)
      .then(function (token) {
        axios.get("/api/project", { headers: { 'Authorization': "bearer " + token } })
          .then(res => {
            that.setState({ projects: res.data })
          }).catch(err => {
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
        {this.renderAddProject()}
        {this.renderEditProject()}
        {this.renderContent()}
      </div>
    );
  }


  renderFunction() {
    return (
      <div className="fnbar">
        <button onClick={() => { this.setState({ showAdd: !this.state.showAdd, showEdit: false }); }}>Create Project</button>
        <button onClick={() => { this.setState({ showEdit: !this.state.showEdit, showAdd: false }); }}>Edit Project</button>
      </div>
    )
  }

  renderAddProject() {
    return (
      <div className={this.state.showAdd ? '' : 'hidden'}>
        <form onSubmit={this.PostProject} className="handleTag">
          Add Project
          <br />
          Project Name:
          <label>
            <input type="text" name="ProjectName" value={this.state.ProjectName} onChange={this.handleChange} />
          </label>
          <br />
          Project Description:
                <label>
            <input type="text" name="Description" value={this.state.Description} onChange={this.handleChange} />
          </label>
          <br />
          Active?:
                <label>
            <input
              type="checkbox"
              name="Active"
              checked={this.state.Active}
              onChange={this.handleChange} />
          </label>
          <input type="submit" value="ADD" />
        </form>
      </div>
    )
  }

  renderEditProject() {
    return (
        <div>
        <div className={this.state.showEdit ? '' : 'hidden'}>
          <form onSubmit={this.PutProject} className="handleTag">
            Edit Project
            <br />
            Project Name:
            <label>
              <input type="text" name="ProjectName" value={this.state.ProjectName} onChange={this.handleChange} />
            </label>
            <br />
            New Project Description:
            <label>
              <input type="text" name="Description" value={this.state.Description} onChange={this.handleChange} />
            </label>
            <br />
            Active?:
            <label>
              <input
                  type="checkbox"
                  name="Active"
                  checked={this.state.Active}
                  onChange={this.handleChange} />
            </label>
            <input type="submit" value="EDIT" />
          </form>
        </div>
        </div>
    )
  }

  // TODO
  renderContent() {
    const { projects } = this.state;
    const tableData = [];

    for (let i = 0; i < projects.length; i++) {
      let project = {};
      project.name = projects[i].ProjectName;

      project.date = projects[i].CreatedDate.substring(0,10);
      project.description = projects[i].Description;
      project.active = projects[i].Active;
      tableData.push(project);
    }

    const statusStyle = {
      margin: '0px 0px 0px 70px'
    };

    const columns = [
      {
        Header: 'Name',
        accessor: 'name',
      },
      {
        Header: 'Date Created',
        accessor: 'date'
      },
      {
        Header: 'Status',
        accessor: 'active',
        getProps: (state, rowInfo, column) => {
          return {
            style: {
              background: rowInfo && rowInfo.row.active ? 'green' : 'red'
            }
          }
        },
        maxWidth: 100

      },
      {
        Header: 'Description',
        accessor: 'description',
      },
    ];
    
    
    return (
      <div>
        <ReactTable
          data={tableData}
          columns={columns}
          defaultPageSize={10}
          minRows={10}
          defaultSorted={[{ id: "date", desc: true }]}
        />
      </div>
    )
  }

}
