import React, { Component } from 'react';
import { Title } from '../Title';
import { TextInput } from './form-text-input';
import { Dropdown } from './form-dropdown';
import { Redirect } from 'react-router-dom';

import { getToken } from '../../adalConfig';
import axios from 'axios';

import './get-info.css';

export class GetInfo extends Component {

  constructor(props)
  {

    super(props);

    this.state = {
      classification: {},
      photos: props.location.state.photos,

      redirectLink: props.location.state.redirectLink,
      redirectOption: false,
      redirect: false
    }

    this.getClassification();

  }

  //
  // axios request
  //
  getClassification = () =>
  {
    let token = getToken();

    axios.get("/api/tag",  { headers: { 'Authorization': "bearer " + token }})
      .then((res) => {
        let obj = {};
        obj[''] = '';

        res.data.forEach((item) => {
          let name = item.TagName.slice(0,1).toUpperCase() + item.TagName.substring(1);
          obj[name] = name;
        });

        this.setState({ classification: obj });
      })
      .catch((err) => { console.log(err); });
  }

  //
  // helper
  //
  listItems(photo, item) 
  {
    let str = '';

    if (item === 'classification')
    {
      str = photo.TagLink[0] || '';

      for (let i = 1; i < photo.TagLink.length; i++)
      {
        str += photo.TagLink[i];
      }
    }
    else if (item === 'project')
    {
      str = photo.ProjectLink[0] || '';

      for (let i = 1; i < photo.ProjectLink.length; i++)
      {
        str += photo.ProjectLink[i];
      }
    }

    return str;
  }

  handleChange = (e) =>
  {
    let photos = this.state.photos;

    if (e.target.id === 'getinfo_name')
    {
      photos.forEach((img) => { img.meta.ImageName = e.target.value });
    }
    else if (e.target.id === 'getinfo_class')
    {
      photos.forEach((img) => { img.meta.TagLink = [e.target.value] });
    }

    this.setState({ photos: photos });
  }

  onCancel = () =>
  {
    this.setState({
      redirectOption: false,
      redirect: true
    });
  }

  // TODO
  onSave = () =>
  {
    this.setState({
      redirectOption: true,
      redirect: true
    });
  }
  
  //
  // redirect
  //
  renderRedirect = () =>
  {
    if (this.state.redirect)
    {
      if (this.state.redirectOption)
      {
        return <Redirect to={{
          pathname: this.state.redirectLink,
          state: { photos: this.state.photos }
        }}/>
      }
      else
      {
        return <Redirect to={this.state.redirectLink} />;
      }
    }
  };

  //
  // render
  //
  render() {
    return (
      <div>
        <Title title='GET INFO' />
        {this.renderRedirect()}
        {this.renderFunction()}
        {this.renderGetInfo()}
      </div>
    );
  }
  
  renderFunction()
  {
    return (
      <div className="fnbar">
        <button onClick={this.onCancel}>Cancel</button>
        <button onClick={this.onSave}>Save</button>
      </div>
    );
  
  }

  renderGetInfo()
  {
    let selected = this.state.photos;

    let placeholder = selected.length > 1 ? 'Various' : this.listItems(selected[0].meta, 'classification');

    const class_options = this.state.classification;
    class_options[''] = placeholder;

    return (
      <div id="getinfo">
          <div className="float-left">
            {this.renderImages()}
          </div>

          <div className="float-right">
            <h2>TITLE :</h2>
            <p>
              <TextInput 
                disabled={selected.length > 1 ? true : false}
                id='getinfo_name'
                placeholder={selected.length > 1 ? 'Various' : selected[0].meta.ImageName}
                onChange={this.handleChange} />
              <br />
            </p>
            <h2>DATE :</h2>
            <p>
              <TextInput 
                disabled={true}
                id='getinfo_date'
                placeholder={selected.length > 1 ? 'Various' : selected[0].meta.UploadedDate}
                onChange={null} />
              <br />
            </p>
            <h2>USER :</h2>
            <p>
              <TextInput 
                disabled={true}
                id='getinfo_user'
                placeholder={selected.length > 1 ? 'Various' : selected[0].meta.UId}
                onChange={null} />
              <br />
            </p>
            <h2>CLASSIFICATION :</h2>
            <p>
              <Dropdown
                id="getinfo_class"
                options={class_options}
                onChange={this.handleChange} />
            </p>
          </div>
      </div>
    );
  }

  renderImages = () =>
  {
    let render = [];

    for (let i = 0; i < this.state.photos.length; i++)
    {
      render.push(
        <div key={i}>
        <img key={i} src={this.state.photos[i].src} />
        <p style={{textAlign: 'center'}}>{this.state.photos[i].meta.ImageName}</p>
        </div>
      );
    }

    return render;
  }

}