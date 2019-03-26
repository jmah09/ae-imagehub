import React, { Component } from 'react';
import { Title } from './Title';

export class Metadata extends Component {

    // get all projects
    GetMetadata() {
        axios.get("/api/metadata", { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                return res;
            })
    };

    render() {

        GetMetadata();
        return (
            <div>
                <Title title='MANAGEMENT : METADATA' />
                {this.renderFunction()}
                {this.renderContent()}
            </div>
        );
    }

    // TODO
    renderFunction() {
        return (
            <div class="fnbar">
                Function stub
            </div>
        )
    }

    // TODO
    renderContent() {
        return (
            <div>
                Metadata stub
            </div>
        )
    }

}
