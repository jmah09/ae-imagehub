import React, { Component } from 'react';
import axios from 'axios'

export class Tag extends Component {
    displayName = Tag.name

    constructor(props) {
        super(props);
    }

    GetTags() {
        axios.get("/api/tag")
            .then(res => {
                return;
            })
    }

    render() {
        return (
            <div>
                <br/>
                <button onClick={this.GetTags}>GetTags</button><br/>
                <button onClick={this.func}>func_name</button><br/>
                <button onClick={this.func}>func_name</button><br/>
                <button onClick={this.func}>func_name</button><br/>
            </div>
        );
    }
}