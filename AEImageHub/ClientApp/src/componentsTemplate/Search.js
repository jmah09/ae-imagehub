import React, { Component } from 'react';
import { Title } from './Title';
import { Dropdown } from './sub-components/form-dropdown';
import { TextInput } from './sub-components/form-text-input';
import {adalConfig, authContext} from '../adalConfig';
import axios from 'axios';
import Gallery from './custom-photo-gallery';
import SelectedImage from './SelectedImage';
import { Redirect } from 'react-router-dom';

import '../index.css';
import './Search.css';
import {adalGetToken} from "react-adal";

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
      selectAll: false,

      redirect: false
    };

    this.dropdown_options = {
      '': ['Select Option', null],
      'Name': ['Name', null],
      'Classification': ['Classification', null],
      'Project': ['Project', null],
      //'Metadata': ['Select Option', selected: null],
      'User': ['User', null],
      'Date': ['Date', null],
    }

    this.text_options = {
      '': 'Search..',
      'Name': 'eg. img_sample_name',
      'Classification': 'eg. Bridge',
      'Project': 'eg. Project A',
      //'Metadata': 'eg. Bridge',
      'User': 'eg. John Smith',
      'Date': 'eg. yyyymmdd'
    }

  }

  //
  // axios request
  //
  getSearch = () => {
    let request_query = '';
    let photos = [];

    switch (this.state.option) {
      case 'Name':
        request_query = "/api/search/image/" + this.state.input_1;
        break;
      case 'Classification':
        request_query = "/api/search/tag/" + this.state.input_1;
        break;
      case 'Project':
        request_query = "/api/search/project/" + this.state.input_1;
        break;
      case 'User':
        request_query = "/api/search/user/" + this.state.input_1;
        break;
      case 'Date':
        request_query = "/api/search/date/" + this.state.input_1.toString() + this.state.input_2.toString();
        break;
      default:
        break;
    }

    adalGetToken(authContext, adalConfig.endpoints.api)
        .then(function (token) {
          const request_param = {headers: {'Authorization': "bearer " + token}};
          axios.get(request_query, request_param)
              .then((res) => {
                console.log("RESULT : " + JSON.stringify(res.data));

                photos = res.data.map((image, index) => {
                  photos.push({
                    src: "/api/image/" + image.IId, width: 5, height: 4, alt: image.IId, meta: image
                  });
                });
              })
              .catch((err) => {
                console.log(err.message);
              });
        }).catch(function (err) {
      console.log("Error: Couldn't get token")
    });

    this.setState({photos: photos});
  }

  handleSubmit = () => 
  {
    const selected = this.state.photos.filter((value) => { return value.selected; });

    for (let i = 0; i < selected.length; i++) {
      adalGetToken(authContext, adalConfig.endpoints.api)
          .then(function (token) {
            const request_param = {headers: {'Authorization': "bearer " + token}};
            axios.put("/api/image/" + selected[0].meta.IId, {
              ImageName: null,
              Trashed: null,
              Submitted: false
            }, request_param)
                .then(response => {
                  console.log(response);
                })
                .catch(error => {
                  console.log(error);
                });
          }).catch(function (err) {
        console.log("Error: Couldn't get token")
      });

    }
    this.setState({ redirect: true });
  }

  //
  // handle
  //
  handleListChange = (e) =>
  {
    this.setState({ option: e.target.value });

    if (e.target.value === 'Date') {
      this.setState({ showDateInput: true });
    }
    else {
      this.setState({
        input_2: null,
        showDateInput: false
      });
    }
  }

  handleTextChange = (e) =>
  {
    this.setState({ [e.target.id]: e.target.value });
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

  onSearch = async (e) =>
  {
    if (this.state.option === '')
    {
      alert('Please select an option.');
      return;
    }

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
      input_2: '',

      showResults: true
    });

    this.getSearch();

    while(this.state.photos.length < 1)
    {
      await this.sleep(300);
    }

    console.log('test')
    this.setState({});
  }

  sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
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

    this.getSearch();

    console.log(JSON.stringify(this.state.query, null, 4));
  }

  selectPhoto = (e, obj) =>
  {
    let photos = this.state.photos;
    photos[obj.index].selected = !photos[obj.index].selected;

    this.setState({ photos });
  }

  toggleSelect = () => 
  {
    let photos = this.state.photos.map((photo, index) => {
      return {...photo, selected: !this.state.selectAll};
    });

    this.setState({
      photos: photos,
      selectAll: !this.state.selectAll
    });
  }

  renderRedirect = () =>
  {
    let link = 'palette';
    if (this.state.redirect)
    {
        return <Redirect to={link} />;
    }
  }


  //
  // render
  //
  render()
  {
    return (
      <div>
        <Title title='SEARCH' />
        {this.renderRedirect()}
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
          <button onClick={this.toggleSelect}>Select All</button>
        </div>
      );
    }
  }


  renderSearchBar = () =>
  {
    return (
      <div id="search-form">
        <Dropdown
          multiple={false}
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
      if (this.state.photos.length > 0)
      {
        return (
          <div id="search-content">
            <p>Found {this.state.photos.length} results.</p>
            {this.state.photos.length > 0
              ? <Gallery
                photos={this.state.photos}
                columns={4}
                onClick={this.selectPhoto}
                ImageComponent={SelectedImage}
                margin={4}
                direction={"row"} />
              : null}
          </div>
        );
      }
      
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