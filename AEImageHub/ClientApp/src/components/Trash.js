import React, { Component } from 'react';
import { Title } from './Title';

export class Trash extends Component {

    render() {
        return (
            <div>
                <Title title='TRASH' />
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
                Trash stub
            </div>
        )
    }

}
