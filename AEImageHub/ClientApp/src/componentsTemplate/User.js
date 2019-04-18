import React, { Component } from 'react';
import { Title } from './Title';
import axios from 'axios';
import { adalConfig, authContext, getToken } from '../adalConfig';
import ReactTable from 'react-table';
import 'react-table/react-table.css';
import { adalGetToken } from "react-adal";

export class User extends Component {

  constructor(props) {
    super(props);
    this.getUsers = this.getUsers.bind(this);
    this.getUsers();

    this.state = {
      users: [],
      newUserName: "",
      newUserPassword: "",
      newUserEmail: "",
      editUserEmail: "",
      showAdd: false,
    };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    
  }

  viewPalette(userid) {
    this.props.history.push("/palette?" + userid);
  }

  viewTrash(userid) {
    this.props.history.push("/trash?" + userid);
  }

  makeAdmin(userId) {
    console.log(userId);
    adalGetToken(authContext, adalConfig.endpoints.api)
      .then(function (token) {
        axios.put("/api/graph/" + userId, null, { headers: { 'Authorization': "bearer " + token } })
          .then(res => {
            console.log(res);
            alert("The selected User has been made an admin.");
          })
      }).catch(function (err) {
        console.log("Error: Couldn't get token")
      });

  }

  getUsers() {
    const that = this;
    adalGetToken(authContext, adalConfig.endpoints.api)
      .then(function (token) {
        axios.get("/api/graph", { headers: { 'Authorization': "bearer " + token } })
          .then(res => {
            var users = [];
            console.log(res);
            res.data.map((user, index) => {
              users.push({
                name: user.displayName,
                email: user.mail,
                uid: user.id,
                userPrincipalName: user.userPrincipalName
              })
            });
            that.setState({ users: users });
          })
      }).catch(function (err) {
        console.log("Error: Couldn't get token")
      });
  }

  deleteUser (uid) {
    const that = this;
    let users = this.state.users;
    adalGetToken(authContext, adalConfig.endpoints.api)
        .then(token => {
          axios.delete("api/graph/" + uid, { headers: { 'Authorization': "bearer " + token } })
              .then(res => {
                let index = users.map(value => {
                  return value.uid;
                }).indexOf(uid);
                
                users.splice(index, 1);
                this.setState( {users: users});
              })
              .catch(err => {
              console.log(err);
              });
        })
  }
  
  addUser (userName, userPassword, userEmail) {
    console.log("user's name, password and email: "+userName+" "+userPassword+" "+userEmail);
    // TODO: this part does not mesh well with the API yet! To be continued
    let tagPayload = { givenName: userName, surname: userName, displayName: userPassword };

    console.log("inside addUser!");
    console.log(tagPayload);

    /*
    let password = adalGetToken(authContext, adalConfig.endpoints.api)
        .then(function (token) {
          axios.post("api/graph/", tagPayload, { headers: { 'Authorization': "bearer " + token } })
              .then(res => {
                console.log("successfully created tag!");
                // alert("New Classification Created. Name: " + this.state.newTag + ", Description: " + _description);
                console.log(res);
                window.location.reload()

              })
              .catch(res => {
                console.log("caught error for creating tag!");
                console.log(res);
              })
        }).catch(function (err) {
      console.log("Error: Couldn't get token")
    });
    
    return password;
    
    */
    
    return "superadminpassword123";
  }

  handleChange(event) {
    this.setState({ [event.target.name]: event.target.value });
  }

  handleSubmit(event) {
    event.preventDefault();
    
    if ((!(this.state.newUserName === "") && !(this.state.newUserPassword === ""))) {
      let newPassword = this.addUser(this.state.newUserName, this.state.newUserPassword, this.state.newUserEmail);
      alert("New account. Please save this password to somewhere you can easily reference: " + newPassword);
    }
    else {
      alert("Please input valid username and password for new user.");
    }

  }

  render() {
    return (
      <div>
        <div>
          <div>
            <Title title='MANAGEMENT: USER' />
          </div>
        </div>
        <div id="palcontent">
          {this.renderAddButton()}
          {this.renderAddUser()}
          {this.renderContent()}
        </div>
      </div>
    );
  }

  renderAddButton() {
    return (
        <div className="fnbar">
          <button onClick={() => { this.setState({ showAdd: !this.state.showAdd }); }}>Create New User</button>
        </div>
    )
  }
  
  renderAddUser() {
    return (
        <div className={this.state.showAdd ? '' : 'hidden'}>
          <form onSubmit={this.handleSubmit} className="handleTag">
            Username:
            <label>
              <input type="text" name="newUserName" value={this.state.ProjectName} onChange={this.handleChange} />
            </label>
            <br />
            Password:
            <label>
              <input type="password" name="newUserPassword" value={this.state.ProjectName} onChange={this.handleChange} />
            </label>
            <br />
            Email:
            <label>
              <input type="text" name="newUserEmail" value={this.state.ProjectName} onChange={this.handleChange} />
            </label>
            <br />
            <input type="submit" value="Add User" />
          </form>
        </div>
    )
  }


  // TODO
  renderContent() {
    const statusStyle = {
      margin: '0px 0px 0px 70px'
    };

    const columns = [
      {
        Header: 'Name',
        accessor: 'name',
      },
      {
        Header: 'Email',
        accessor: 'email',
        show: true
      },
      {
        Header: 'UId',
        accessor: 'uid',
        show: false
      },
      {
        Header: 'userPrincipalName',
        accessor: 'userPrincipalName',
        show: false
      }
    ];

    const sub_columns = columns.slice(0);
    sub_columns.push({
      id: 'button',
      accessor: 'uid',
      Cell: ({ value }) => (<div class="fnbar">
        <button onClick={() => {
          this.makeAdmin(value);
        }}>Make Admin
        </button>
      </div>)
    });

    sub_columns.push({
      id: 'button2',
      accessor: 'uid',
      Cell: ({ value }) => (<div className="fnbar">
        <button onClick={() => {
          this.viewPalette(value);
        }}>View Palette
        </button>
      </div>)
    });

    sub_columns.push({
      id: 'button3',
      accessor: 'uid',
      Cell: ({ value }) => (<div className="fnbar">
        <button onClick={() => {
          this.viewTrash(value);
        }}>View Trash
                </button>
      </div>)
    });
    
    sub_columns.push({
      id: 'button4',
      accessor: 'uid',
      Cell: ({ value }) => (<div className="fnbar">
        <button onClick={() => {
          this.deleteUser(value);
        }}>Delete User
        </button>
      </div>)
    });
    return (
      <div>
        <div className='fnbar'></div>
        <div>
          <ReactTable
            data={this.state.users}
            columns={sub_columns}
            defaultPageSize={10}
            minRows={10}
          />
        </div>
      </div>
    )
  }

}