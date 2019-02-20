import React, { Component } from 'react';
import { Title } from './Title';

export class Palette extends Component {

    render() {
        return (
            <div>
                <Title title='PALETTE' />
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
                Palette stub
            </div>
        )
    }

}
