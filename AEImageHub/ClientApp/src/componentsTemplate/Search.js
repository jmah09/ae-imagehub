import React, { Component } from 'react';
import { Title } from './Title';
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
            showResult: false,

            photos: [],
            selectAll: false
        };

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
            this.setState({ showDateInput: false });
        }
    }

    handleTextChange = (e) => 
    {
        this.setState({[e.target.id]: e.target.value});
    }

    buildQuery = (e) =>
    {
        let input_1 = this.state.input_1;
        let input_2 = this.state.input_2;

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
            
            showResult: true
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
                {this.renderSearch()}
                {this.renderFunction()}
                {this.renderContent()}
            </div>
        );
    }

    renderFunction()
    {
        if (this.state.showResult)
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


    renderSearch = () => 
    {
        return (
            <div id="search-form">
                <SearchDropdown onChange={this.handleListChange} />
                <SearchTextform id="input_1" option={this.state.option} value={this.state.input_1} onChange={this.handleTextChange} />
                {this.state.showDateInput ? <SearchTextform id="input_2" option={this.state.option} value={this.state.input_2} onChange={this.handleTextChange} /> : null}
                {this.state.showResult ? null : <SearchButton name="Search" onClick={this.onSearch} />}
                {this.state.showResult ? <SearchButton name="Add Filter" onClick={this.onAddFilter} /> : null}
            </div>
        )
    }

    renderContent() 
    {
        if (this.state.onSearch)
        {
            return (
                <div id="search-content">
                    <Gallery
                        photos={this.state.photos}
                        columns={3}
                        onClick={this.selectPhoto}
                        ImageComponent={SelectedImage}
                        margin={4}
                        direction={"row"}
                    />
                </div>
            )
        }
        else 
        {
            return null;
        }
    }
}

class SearchDropdown extends React.Component {

    constructor(props)
    {   
        super(props);
    }

    render()
    {
        return (
            <select id="search-dropdown" onChange={this.props.onChange}>
                <option style={{ display: 'none' }}>Select Option</option>
                <option value="n">Name</option>
                <option value="c">Classification</option>
                <option value="p">Project</option>
                
                <option value="u">User</option>
                <option value="d">Date</option>
            </select>
        )
    }

}

class SearchTextform extends React.Component {

    constructor(props)
    {
        super(props);

        this.placeholder = '';
    }

    // predefined search categories
    setPlaceholder = () =>
    {
        switch(this.props.option) {
            case 'n':
                this.placeholder = 'img_sample_name';
                break;
            case 'c':
                this.placeholder = 'Bridge';
                break;
            case 'p':
                this.placeholder = 'Project A';
                break;
            /* case 'm':
                this.placeholder = 'Bridge';
                break; */
            case 'u':
                this.placeholder = 'John Smith';
                break;
            case 'd':
                this.placeholder = 'yyyymmdd';
                break;
            default:
                this.placeholder = 'Search..';
        }
    }


    render()
    {
        this.setPlaceholder();

        return (
            <input type="text" id={this.props.id} placeholder={this.placeholder} value={this.props.value} onChange={this.props.onChange} />
        )
    }

}

class SearchButton extends React.Component {

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