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
    }

    makeAdmin(userPrincipalName) {
        userPrincipalName= 'todo';
        axios.post("/api/graph" + userPrincipalName, null, { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res=> {
            console.log(res);
        alert("User " + userPrincipalName + " has been made Admin.");
    })
    }



    getUsers() {
        axios.post("/api/graph", { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
            var users = [];
        res.data.map((user, index) => {
            users.push({
                name: user.name, email: user.unique_name
            })
        })
        console.log("users: " + res);
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
        const data = [
            {
                name: 'John Smith',
                email: 'john@gmail.com'
            },
            {
                name: 'Adam Smith',
                email: 'coin@gmail.com',
            },
        ];


        const columns = [
            {
                Header: 'Name',
                accessor:'name'
            },
            {
                Header: 'Email',
                accessor: 'email'
            },
        ];

        const sub_columns = columns.slice(0)
        sub_columns.push({
            id: 'button',
            accessor: 'name',
            Cell: ({value}) => (<div class="fnbar">
            <button onClick={()=>{
            alert('Updating MAKE ADMIN.'); // TODO
            this.makeAdmin(value);
        }}>MAKE ADMIN
        </button>
        </div>)
    })

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
    })


        return (
            <div>
            <br />
            <br />
            <ReactTable data={data} columns={sub_columns} />
        </div>
    )
    }

}