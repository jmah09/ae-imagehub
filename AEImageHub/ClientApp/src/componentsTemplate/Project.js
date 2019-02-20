import React, { Component } from 'react';
import { Title } from './Title';

export class Project extends Component {

    render() {
        return (
            <div>
                <Title title='MANAGEMENT : PROJECT' />
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
                Project stub
            </div>
        )
    }

}
