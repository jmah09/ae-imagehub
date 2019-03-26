import React, { Component } from 'react';
import { Title } from './Title';
import axios from 'axios';
import {getToken} from '../adalConfig';
import ReactTable from 'react-table';
import 'react-table/react-table.css';

export class User extends Component {

    constructor(props) {
        super(props);
        this.getUsers = this.getUsers.bind(this);
        this.getUsers();

        this.state = {
            users: []
        };
    }

    makeAdmin(userId) {
        console.log(userId);
        axios.post("/api/graph/" + userId, null, { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res=> {
                console.log(res);
                alert("The selected User has been made an admin.");
            })
    }

    getUsers() {
        axios.get("/api/graph", { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                var users = [];
                res.data.map((user, index) => {
                    users.push({
                        name: user.displayName, email: user.mail, uid: user.id
                    })
                });
                this.setState({ users: users });
            })
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
        ];

        const sub_columns = columns.slice(0);
        sub_columns.push({
            id: 'button',
            accessor: 'uid',
            Cell: ({value}) => (<div class="fnbar">
                <button onClick={()=>{
                    alert('Updating MAKE ADMIN.'); // TODO
                    this.makeAdmin(value);
                }}>MAKE ADMIN
                </button>
            </div>)
        });

        // TODO
        sub_columns.push({
            id: 'button2',
            accessor: 'email',
            Cell: ({value}) => (<div className="fnbar">
                <button onClick={() => {
                    alert('Updating VIEW PALETTE')
                    // TODO
                }}>VIEW PALETTE
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
