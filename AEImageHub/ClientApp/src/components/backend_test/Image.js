import React, { Component } from 'react';
import axios from 'axios'

export class Image extends Component {
    displayName = Image.name

    constructor(props) {
        super(props);
    }

    A() {
        axios.get("/api/user/userA/images")
            .then(res => {
                return;
            })
    };

    render() {
        return (
            <div>
                <br/>
                <button onClick={this.A}>A</button><br/>
                <button onClick={this.func}>func_nsdfasdfasdfasdfasdame</button><br/>
                <button onClick={this.func}>func_name</button><br/>
                <button onClick={this.func}>func_name</button><br/>
            </div>
        );
    }
}
