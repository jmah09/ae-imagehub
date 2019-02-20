import React, { Component } from 'react';
import { Title } from './Title';

export class Search extends Component {

    render() {
        return (
            <div>
                <Title title='SEARCH' />
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
                Search stub
            </div>
        )
    }

}
