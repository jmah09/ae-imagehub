import React, { Component } from 'react';
import { Title } from './Title';
import axios from 'axios';
import {adalConfig, authContext, getToken} from '../adalConfig';
import ReactTable from 'react-table';
import 'react-table/react-table.css';
import {adalGetToken} from "react-adal";

export class User extends Component {

    constructor(props) {
        super(props);
        this.getUsers = this.getUsers.bind(this);
        this.getUsers();

        this.state = {
            users: [],

        };
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
                axios.post("/api/graph/" + userId, null, {headers: {'Authorization': "bearer " + token}})
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
                axios.get("/api/graph", {headers: {'Authorization': "bearer " + token}})
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
                        that.setState({users: users});
                    })
            }).catch(function (err) {
            console.log("Error: Couldn't get token")
        });
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
            {this.renderContent()}
            </div>
            </div>
    );
    }


    // TODO
    renderContent() {
        const statusStyle = {
            margin: '0px 0px 0px 70px'
        };

        const columns = [
            {
                Header: 'Name',
                accessor:'name',
            },
            {
                Header: 'Email',
                accessor: 'email',
            },
            {
                Header: 'Uid',
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
            Cell: ({value}) => (<div class="fnbar">
            <button onClick={()=>{
            this.makeAdmin(value);
        }}>MAKE ADMIN
        </button>
        </div>)
    });
        
        sub_columns.push({
            id: 'button2',
            accessor: 'uid',
            Cell: ({value}) => (<div className="fnbar">
            <button onClick={() => {
            this.viewPalette(value);
            // TODO
        }}>VIEW PALETTE
        </button>
        </div>)
    });

        sub_columns.push({
            id: 'button3',
            accessor: 'uid',
            Cell: ({value}) => (<div className="fnbar">
                <button onClick={() => {
                    this.viewTrash(value);
                    // TODO
                }}>VIEW TRASH
                </button>
            </div>)
        });


        return (
            <div>
            <br />
            <br />
            <ReactTable data={this.state.users} columns={sub_columns} />
        </div>
    )
    }

}