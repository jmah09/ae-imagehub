import React, { Component } from 'react';
import { Title } from './Title';
import { Dropdown } from './sub-components/form-dropdown';
import { TextInput } from './sub-components/form-text-input';
import { adalConfig, authContext, getUser } from '../adalConfig';
import { adalGetToken } from "react-adal";
import axios from 'axios';
import Gallery from './custom-photo-gallery';
import SelectedImage from './SelectedImage';
import { Redirect } from 'react-router-dom';

/*
* Icon made by Egor Rumyantsev
* From www.flaticon.com
* Licensed by Creative Commons 3.0 BY
*/
import cancelIcon from './sub-components/cancel.svg';

import '../index.css';
import './Search.css';

export class Search extends Component {

  constructor(props)
  {

    super(props);

    this.state = {
      option: '',
      input_1: '',
      input_2: '',

      showDateInput: false,
      showInfo: false,
      showResults: false,

      photos: [],
      filters: [],
      filteredPhotos: [],
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

    switch (this.state.option)
    {
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
      .catch(() => { console.log("Could not get token"); })
      .then((token) => {
        const request_param = {headers: {'Authorization': "bearer " + token}};

        axios.get(request_query, request_param)
          .catch((err) => { console.log(err.message); })
          .then((res) => {
            let prev = '';

            // assuming the bug has repeats of the image
            /* for (let i = 0; i < res.data.length; i++)
            {
              let image = res.data[i];

              if (image.IId !== prev)
              {
                prev = image.IId;
                photos.push({ src: "/api/image/" + image.IId, width: 5, height: 4, alt: image.ImageName, meta: image });
              }
            } */

            photos = res.data.map((image, index) => {
              return { src: "/api/image/" + image.IId, width: 5, height: 4, alt: image.IId, meta: image };
            });

            this.setState({
              filteredPhotos: photos,
              photos: photos,
              showResults: true
            });
          });
      })
      .catch((err) => { console.log(err.message); });
  }

  handleSubmit = () => 
  {
    let selected = this.state.photos.filter((value) => { return value.selected; });
    let promise = [];

    for (let i = 0; i < selected.length; i++)
    {
      promise.push(
        new Promise((resolve, reject) => {
          adalGetToken(authContext, adalConfig.endpoints.api)
          .then(function (token) {

            const request_param = {headers: {'Authorization': "bearer " + token}};
            let image = selected[i].meta;
  
            axios.put("/api/image/" + image.IId, {
              UId: getUser().profile.oid,
              ImageName: null,
              Trashed: null,
              Submitted: 'False'
              }, request_param
            )
            .catch((err) => {
              console.log(err);
              reject();
            })
            .then((res) => {
              console.log(res); 
              resolve();
            });

          })
          .catch(function () {
            console.log("Error: Couldn't get token");
            reject();
          });          
        })
      );
    }

    Promise.all(promise).then(() => { this.setState({ redirect: true }); });
  }

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

  buildQuery = () =>
  {
    let input_1 = this.state.input_1 !== '' ? this.state.input_1 : null;
    let input_2 = this.state.input_1 !== '' ? this.state.input_2 : null;

    if (this.state.option === 'Date')
    {
      input_1 = parseInt(input_1, 10);
      input_2 = parseInt(input_2, 10);
    }

    let res = {
      option: this.state.option,
      input_1: input_1,
      input_2: input_2
    }

    return res;
  }

  // TODO
  onPressEnter(e)
  {
    if (e.key === 'Enter')
    {
      //
    }
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

    this.getSearch();
  }

  onAddFilter = async (e) => 
  {
    e.preventDefault();

    let curQuery = this.buildQuery();

    if (curQuery.option === '')
    {
      alert('Please select an option.');
      return;
    }

    if (!curQuery.input_1)
    {
      return;
    }

    if (curQuery.option === 'Date' && (!curQuery.input_1 || !curQuery.input_2))
    {
      alert('Please search with the correct date format: yyyymmdd');
      return;
    }

    let filteredPhotos = await this.performFilter(this.state.filteredPhotos, curQuery);

    // add query
    let allFilters = this.state.filters;
    allFilters.push(curQuery);

    this.setState({
      filters: allFilters,
      input_1: '',
      input_2: '',

      filteredPhotos: filteredPhotos
    });
  }

  onRemoveFilter = async (index) =>
  {
    if (this.state.filters.length === 1)
    {
      this.setState({
        filters: [],
        filteredPhotos: this.state.photos
      });
      
      return;
    }

    let filters = this.state.filters;
    filters.splice(index, 1);
    let filteredPhotos = this.state.photos;

    for (let i = 0; i < filters.length; i++)
    {
      let filter = filters[0];
      
      filteredPhotos = await this.performFilter(filteredPhotos, filter);
    }

    this.setState({
      filters: filters,
      filteredPhotos: filteredPhotos
    });
  }

  performFilter(photos, filter)
  {
    return new Promise(resolve => {
      let filtered = photos.filter((item) => {
        let res = false;
  
        switch (filter.option)
        {
          case 'Name':
            res = item.meta.ImageName.includes(filter.input_1);
            break;
          case 'Classification':
            for (let i = 0; i < item.meta.TagLink.length; i++)
            {
              if (item.meta.TagLink[i].toLowerCase() === filter.input_1.toLowerCase())
              {
                res = true;
                break;
              }
            }
            break;
          case 'Project':
            for (let i = 0; i < item.meta.ProjectLink.length; i++)
            {
              if (item.meta.ProjectLink[i].toLowerCase() === filter.input_1.toLowerCase())
              {
                res = true;
                break;
              }
            }
            break;
          case 'User':
            res = item.meta.UserName.toLowerCase() === filter.input_1.toLowerCase();
          case 'Date':
            // TODO -- DATE LOGIC
            break;
          default:
            break;
        }
  
        return res;
      });
      
      resolve(filtered);
    });
  }

  selectPhoto = (e, obj) =>
  {
    let photos = this.state.filteredPhotos;
    photos[obj.index].selected = !photos[obj.index].selected;

    this.setState({ filteredPhotos: photos });
  }

  toggleSelect = () => 
  {
    let photos = this.state.filteredPhotos.map((photo, index) => {
      return {...photo, selected: !this.state.selectAll};
    });

    this.setState({
      filteredPhotos: photos,
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
        {this.renderFilters()}
        {this.renderFunction()}
        {this.renderContent()}
      </div>
    );
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
        {this.state.showResults && this.state.filteredPhotos.length > 0
          ? null
          : <button type="submit" onClick={this.onSearch} onKeyPress={this.onPressEnter}>Search</button>}
        {this.state.showResults && this.state.filteredPhotos.length > 0
          ? <button type="submit" onClick={this.onAddFilter}>Add Filter</button>
          : null}
      </div>
    );
  }

  renderFilters = () =>
  {
    let filters = this.state.filters;
    let res = [];

    for (let i = 0; i < filters.length; i++)
    {
      let filter = filters[i];

      if (filter.option === 'Date')
      {
        // TODO
      }
      else
      {
        res.push(
          <button key={i} onClick={() => this.onRemoveFilter(i)}>
            <img src={cancelIcon} className="cancel-icon"	alt="cancel icon" />{filter.option}: {filter.input_1}
          </button>
        );
      }
    }

    return (
      <div id="search-filters">
        {res}
      </div>
    );
  }

  renderFunction = () =>
  {
    if (this.state.showResults && this.state.filteredPhotos.length > 0)
    {
      return (
        <div className="fnbar">
          <button onClick={this.handleSubmit}>Add To Palette</button>
          <button>WIP: Get Info</button>
          <button onClick={this.toggleSelect}>Select All</button>
        </div>
      );
    }
  }

  renderContent = () =>
  {
    if (this.state.showResults)
    {
      return (
        <div id="search-content">
          <p>Found {this.state.filteredPhotos.length} results.</p>
          {this.state.filteredPhotos.length > 0
            ? <Gallery
              photos={this.state.filteredPhotos}
              columns={4}
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