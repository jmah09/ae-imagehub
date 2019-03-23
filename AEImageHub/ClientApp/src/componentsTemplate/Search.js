import React, { Component } from 'react';
import { Title } from './Title';

export class Search extends Component {

    constructor(props)
    {

        super(props);
        this.state = {
            input_1: '',
            input_2: '',
            classification: 'name',
            dateInputState: 'hidden'
        };

    }

    //
    //
    //
    //
    //

    //
    //
    //
    //
    handleDateState = () => 
    {
        return this.state.dateInputState;
    }

    handleListChange = (e) => 
    {
        this.state.classification = e.target.value;
        if (e.target.value === 'date') {
            this.state.dateInputState = 'text';
        } else {
            this.state.dateInputState = 'hidden';
        }

        this.handleDateState();
    }

    handleTextChange = (e) => 
    {
        this.state[e.target.id] = e.target.value;
    }

    // TODO
    handleSearch = () => 
    {
        // AXIOS POST REQUEST
        // all inputs are in this.state
        // - this.state.classification
        // - this.state.input_1 (potentially start date)
        // - if this.state.classification == date, then
        //     this.state.input_2 (end date)
        alert('uguukawaiiuguu');
    }

    //
    //
    //
    //
    render() 
    {
        return (
            <div>
                <Title title='SEARCH' />
                {this.renderContent()}
            </div>
        );
    }


    // request in SearchForm
    renderContent() 
    {
        return (
            <div>
                {this.renderSearch()}
            </div>
        )
    }

    renderSearch = () => 
    {
        console.log(this.state.dateInputState);
        return (
            <form id="search" onSubmit={this.handleSubmit}>
                <select value={this.state.value} onChange={this.handleListChange}>
                    <option value="name">Name</option>
                    <option value="classification">Classification</option>
                    <option value="project">Project</option>
                    <option value="metadata">Metadata</option>
                    <option value="user">User</option>
                    <option value="date">Date</option>
                </select>
                <br /><br />

                <input type="text" id="input_1" onChange={this.handleTextChange} />
                <input type={this.handleDateState} id="input_2" onChange={this.handleTextChange} />
                <br /><br />


                <button type="submit" onClick={this.handleSearch}>Search</button>
            </form>
        )
    }

}
