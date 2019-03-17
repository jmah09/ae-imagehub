import React, { Component } from 'react';
import { SearchForm } from './SearchForm';
import { Title } from './Title';

export class Search extends Component {

    render() {
        return (
            <div>
                <Title title='SEARCH' />
                {this.renderContent()}
            </div>
        );
    }
    

    // request in SearchForm
    renderContent() {
        return (
            <div>
                <SearchForm />
            </div>
        )
    }

}
