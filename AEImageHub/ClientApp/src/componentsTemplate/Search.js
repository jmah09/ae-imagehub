import React, { Component } from 'react';
import { Title } from './Title';
import { Dropdown } from './sub-components/form-dropdown';
import { TextInput } from './sub-components/form-text-input';
import axios from 'axios';
import { getCredentials, getToken } from '../adalConfig';
import Gallery from './custom-photo-gallery';
import SelectedImage from './SelectedImage';
import { Redirect } from 'react-router-dom';

import './Search.css';

export class Search extends Component {

    constructor(props)
    {

        super(props);

        this.state = {
            query: [],
            option: '',
            input_1: '',
            input_2: '',

            showDateInput: false,
            showInfo: false,
            showResults: false,

            photos: [],
            selectAll: false
        };

        
        this.dropdown_options = {
            '': 'Select Option',
            'n': 'Name',
            'c': 'Classification',
            'p': 'Project',
            //'m': 'Metadata',
            'u':'User',
            'd': 'Date'
        }

        this.text_options = {
            '': 'Search..',
            'n': 'img_sample_name',
            'c': 'Bridge',
            'p': 'Project A',
            //'m': 'Bridge',
            'u':'John Smith',
            'd': 'yyyymmdd'
        }
        
    }

    //
    // axios request
    //
    // TODO

    //
    // handle
    //
    handleListChange = (e) => 
    {
        this.setState({ option: e.target.value });

        if (e.target.value === 'd')
        {
            this.setState({ showDateInput: true });
        }
        else
        {
            this.setState({
                input_2: null,
                showDateInput: false
            });
        }
    }

    handleTextChange = (e) => 
    {
        this.setState({[e.target.id]: e.target.value});
    }

    buildQuery = (e) =>
    {
        let input_1 = this.state.input_1 !== '' ? this.state.input_1 : null;
        let input_2 = this.state.input_1 !== '' ? this.state.input_2 : null;

        if (this.state.option === 'd')
        {
            input_1 = parseInt(input_1);
            input_2 = parseInt(input_2);
        }

        let res = {
            option: this.state.option,
            input_1: input_1,
            input_2: input_2
        }

        return res;
    }

    onSearch = (e) => 
    {        
        e.preventDefault();

        if (this.state.option === '')
        {
            alert('Please select an option.');
            return;
        }
        
        let curQuery = this.buildQuery();

        if (curQuery.input_1 === null) {
            return;
        }

        if (this.state.option === 'd' && (!curQuery.input_1 || !curQuery.input_2))
        {
            alert('Please search with the correct date format: yyyymmdd');
            return;
        }

        let allQuery = this.state.query;
        allQuery.push(curQuery);

        this.setState({
            query: allQuery,
            input_1: '',
            input_2: '',
            
            showResults: true
        });

        // AXIOS POST REQUEST
        // all inputs are in this.state.query
        // for each in this.state.query :
        // - option
        // - input_1 (potentially start date)
        // - if option == date, then
        //     input_2 (end date)
        // TODO -- request function calls here

        console.log(JSON.stringify(this.state.query, null, 4));
    }

    onAddFilter = (e) =>
    {
        e.preventDefault();

        let curQuery = this.buildQuery();

        if (curQuery.input_1 === null) {
            return;
        }

        if (this.state.option === 'd' && (!curQuery.input_1 || !curQuery.input_2))
        {
            alert('Please search with the correct date format: yyyymmdd');
            return;
        }

        let allQuery = this.state.query;
        allQuery.push(curQuery);

        this.setState({
            query: allQuery,
            input_1: '',
            input_2: ''
        });
        
        alert('Added filter');
        
        console.log(JSON.stringify(this.state.query, null, 4));
    }

    selectPhoto = (e, obj) =>
    {
        let photos = this.state.photos;
        photos[obj.index].selected = !photos[obj.index].selected;

        this.setState({ photos: photos });
    }

    //
    // render
    //
    render() 
    {
        return (
            <div>
                <Title title='SEARCH' />
                {this.renderSearchBar()}
                {this.renderFunction()}
                {this.renderContent()}
            </div>
        );
    }

    renderFunction()
    {
        if (this.state.showResults && this.state.photos.length > 0)
        {
            return (
                <div className="fnbar">
                    <button onClick={this.handleSubmit}>Add To Palette</button>
                    <button>Get Info</button>
                    <button>Select All</button>
                </div>
            )
        }
    }


    renderSearchBar = () => 
    {
        return (
            <div id="search-form">
                <Dropdown
                    id="search-dropdown"
                    options={this.dropdown_options}
                    onChange={this.handleListChange} />
                <TextInput 
                    id="input_1" 
                    option={this.state.option}
                    options={this.text_options}
                    value={this.state.input_1} 
                    onChange={this.handleTextChange} />
                {this.state.showDateInput 
                    ? <TextInput 
                        id="input_2" 
                        option={this.state.option}
                        options={this.text_options}
                        value={this.state.input_2} 
                        onChange={this.handleTextChange} />
                    : null}
                {this.state.showResults 
                    ? null
                    : <SearchButton 
                        name="Search" 
                        onClick={this.onSearch} />}
                {this.state.showResults 
                    ? <SearchButton 
                        name="Add Filter" 
                        onClick={this.onAddFilter} />
                    : null}
            </div>
        )
    }

    renderContent() 
    {
        if (this.state.showResults)
        {
            return (
                <div id="search-content">
                    <p>Found {this.state.photos.length} results.</p>
                    {this.state.photos.length > 0
                        ? <Gallery
                            photos={this.state.photos}
                            columns={3}
                            onClick={this.selectPhoto}
                            ImageComponent={SelectedImage}
                            margin={4}
                            direction={"row"} />
                        : null}
                </div>
            )
        }
        else 
        {
            return null;
        }
    }
}

export class SearchButton extends Component {

    constructor(props)
    {
        super(props);
    }

    render()
    {
        return (
            <button type="submit" onClick={this.props.onClick}>{this.props.name}</button>
        )
    }

}