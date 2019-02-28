import React, { Component } from 'react';
import axios from 'axios'

export class User extends Component {
    displayName = User.name

    constructor(props) {
        super(props);
    }

    render() {
        return (
            <div>
                <br/>
                <button onClick={this.func}>func_name</button><br/>
                <button onClick={this.func}>func_name</button><br/>
                <button onClick={this.func}>func_name</button><br/>
                <button onClick={this.func}>func_name</button><br/>
            </div>
        );
    }
}