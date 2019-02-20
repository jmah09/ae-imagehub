import React, { Component } from 'react';
import { Title } from './Title';

export class User extends Component {

    render() {
        return (
            <div>
                <Title title='MANAGEMENT : USER' />
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
                User stub
            </div>
        )
    }

}
