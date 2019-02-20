import React, { Component } from 'react';
import { Title } from './Title';

export class Log extends Component {

    render() {
        return (
            <div>
                <Title title='LOG' />
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
                Log stub
            </div>
        )
    }

}
