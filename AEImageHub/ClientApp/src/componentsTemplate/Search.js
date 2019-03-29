import React, { Component } from 'react';
import { Title } from './Title';
import { Dropdown } from './sub-components/form-dropdown';
import { TextInput } from './sub-components/form-text-input';
import { getCredentials, getToken } from '../adalConfig';
import axios from 'axios';
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
      'Name': 'Name',
      'Classification': 'Classification',
      'Project': 'Project',
      //'Metadata': 'Metadata',
      'User':'User',
      'Date': 'Date'
    }

    this.text_options = {
      '': 'Search..',
      'Name': 'eg. img_sample_name',
      'Classification': 'eg. Bridge',
      'Project': 'eg. Project A',
      //'Metadata': 'eg. Bridge',
      'User':'eg. John Smith',
      'Date': 'eg. yyyymmdd'
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

    if (e.target.value === 'Date')
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

    if (this.state.option === 'Date')
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

      if (this.state.option === '') {
          alert('Please select an option.');
          return;
      }

      ///////////////////////////////////////////////////////////////////////////
      // Jae: I added below to test.
      else if (this.state.option === 'Name' && !(this.state.input_1 === '')) {
          axios.get("/api/search/image/" + this.state.input_1, { headers: { 'Authorization': "bearer " + getToken() } })
              .then(res => {
                  console.log("search by imagename: " + JSON.stringify(res));
                  return res;
              })
      } else if (this.state.option === 'Classification' && !(this.state.input_1 === '')) {
          axios.get("/api/search/tag/" + this.state.input_1, { headers: { 'Authorization': "bearer " + getToken() } })
              .then(res => {
                  console.log("search by tagname: " + JSON.stringify(res));
                  return res;
              })
      } else if (this.state.option === 'Project' && !(this.state.input_1 === '')) {
          axios.get("/api/search/project/" + this.state.input_1, { headers: { 'Authorization': "bearer " + getToken() } })
              .then(res => {
                  console.log("search by projectname: " + JSON.stringify(res));
                  return res;
              })
      } else if (this.state.option === 'User' && !(this.state.input_1 === '')) {
          axios.get("/api/search/user/" + this.state.input_1, { headers: { 'Authorization': "bearer " + getToken() } })
              .then(res => {
                  console.log("search by username: " + JSON.stringify(res));
                  return res;
              })
      } else if (this.state.option === 'Date' && !(this.state.input_1 === '') && !(this.state.input_2 === '')) {
          axios.get("/api/search/user/" + this.state.input_1.toString() + this.state.input_2.toString(), { headers: { 'Authorization': "bearer " + getToken() } })
              .then(res => {
                  console.log("search by uploadeddate: " + JSON.stringify(res));
                  return res;
              })
      }
      //////////////////////////////////////////////////////////////////////////////////
    
    let curQuery = this.buildQuery();

    if (!curQuery.input_1) {
      return;
    }

    if (this.state.option === 'Date' && (!curQuery.input_1 || !curQuery.input_2))
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

    // TODO -- axios request function calls

    console.log(JSON.stringify(this.state.query, null, 4));
  }

  onAddFilter = (e) =>
  {
    e.preventDefault();

    let curQuery = this.buildQuery();

    if (!curQuery.input_1)
    {
      return;
    }

    if (this.state.option === 'Date' && (!curQuery.input_1 || !curQuery.input_2))
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
      );
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
          : <button type="submit" onClick={this.onSearch}>Search</button>}
        {this.state.showResults 
          ? <button type="submit" onClick={this.onAddFilter}>Add Filter</button>
          : null}
      </div>
    );
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
      );
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
    );
  }

}