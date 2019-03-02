import React, { Component } from 'react';
import axios from 'axios'

export class User extends Component {
    displayName = User.name

    constructor(props) {
        super(props);
    }

    GetUserImages() {
        axios.get("/api/user/userA/images")
        .then(res => {
            return;
        })
    }

    GetUserProfile() {
        axios.get("/api/user/userA")
            .then(res => {
                return;
            })
    }

    render() {
        return (
            <div>
                <br/>
                <button onClick={this.GetUserImages}>GetUserImages</button><br/>
                <button onClick={this.GetUserProfile}>GetUserProfile</button><br/>
                <button onClick={this.func}>func_name</button><br/>
                <button onClick={this.func}>func_name</button><br/>
            </div>
        );
    }
}