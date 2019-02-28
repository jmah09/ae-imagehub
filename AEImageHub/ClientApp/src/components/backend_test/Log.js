import React, { Component } from 'react';
import axios from 'axios'

export class Log extends Component {
    displayName = Log.name

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
