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

    const token = getToken();

    super(props);

    this.state = {
      token: token,

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
    axios.get("/api/tag",  { headers: { 'Authorization': "bearer " + this.state.token }})
      .then((res) => {
        let obj = {};
        obj[''] = '';

        res.data.forEach((item) => {
          let name = item.TagName.slice(0,1).toUpperCase() + item.TagName.substring(1);
          obj[name] = {
            name: name,
            selected: false
          };
        });

        this.setState({ classification: obj });
      })
      .catch((err) => { console.log(err); });
  }

  getProject = () =>
  {
    // STUB
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
        str = str + ', ' + photo.TagLink[i];
      }
    }
    else if (item === 'project')
    {
      str = photo.ProjectLink[0] || '';

      for (let i = 1; i < photo.ProjectLink.length; i++)
      {
        str = str + ', ' + photo.ProjectLink[i];
      }
    }

    return str;
  }

  handleNameChange = (e) =>
  {
    const photos = this.state.photos.filter((value) => { return value.selected; });
    photos.forEach((img) => {
      img.meta.ImageName = e.target.value;
    });
    
    this.setState({ photos: photos });
  };

  // TODO
  handleClassificationChange = (e) =>
  {
    let photos = this.state.photos;
    let tags;

    //check if classification exists 
    photos.forEach((img) => {
      tags = img.meta.TagLink;
      let options = e.target.options;
      for (let i = 0; i < options.length; i++){
        let option = options[i].selected;
        if (option && !tags.includes(options[i].value)){
          tags.push(options[i].value)
        }
      }
      this.setState({ photos: photos});
      console.log(this.state.photos);
    });
  };

  onCancel = (e) =>
  {
    this.setState({
      redirectOption: false,
      redirect: true
    });
    e.preventDefault();
  };

  // TODO -- SAVE METADATA TO DATABASE INSTEAD
  // TODO -- ^ IF COMPLETED REMOVE ALL INSTANCES OF redirectOption AND RELATED IF STATEMENTS
  onSave = (e) =>
  {
    let photos = this.state.photos;
    let tags;
    let imageID;
    for (let i = 0; i < photos.length; i++){
      tags = photos[i].meta.TagLink;
      console.log(tags);
      imageID = photos[i].meta.IId;
      
      axios.delete("/api/tag/taglink/:" + imageID, 
          {headers: {'Authorization': "bearer " + this.state.token}
      }).then (response =>{
        console.log(response)
      }).catch( error => {
        console.log(error);
      });
      
      for (let k = 0; k < tags.length; k++){
        axios.post("/api/tag/taglink", {
          TagName: tags[k],
          IId: imageID,
        }, {headers: {'Authorization': "bearer " + this.state.token}
        }).then( response => {
          console.log(response);
        }).catch (error => {
          console.log(error);
        });
      }
    }
    
    this.setState({
      redirectOption: true,
      redirect: true
    });
    e.preventDefault();
  };
  
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
            <h2>IMAGE NAME :</h2>
            <p>
              <TextInput 
                disabled={selected.length > 1 ? true : false}
                id='getinfo_name'
                value={selected.length > 1 ? 'Various' : null}
                placeholder={selected.length > 1 ? 'Various' : selected[0].meta.ImageName}
                onChange={this.handleNameChange} />
              <br />
            </p>
            <h2>UPLOADED DATE :</h2>
            <p>
              <TextInput 
                disabled={true}
                id='getinfo_date'
                value={selected.length > 1 ? 'Various' : selected[0].meta.UploadedDate}
                onChange={null} />
              <br />
            </p>
            <h2>UPLOADED BY :</h2>
            <p>
              <TextInput 
                disabled={true}
                id='getinfo_user'
                value={selected.length > 1 ? 'Various' : selected[0].meta.U.UserName} // TODO -- GET USERNAME
                onChange={null} />
              <br />
            </p>
            <h2>CLASSIFICATION :</h2>
            <p>
              <Dropdown
                multiple={true}  
                id="getinfo_class"
                options={class_options}
                onChange={this.handleClassificationChange} />
            </p>
            <h2>PROJECT :</h2>
            <p>
              <TextInput 
                disabled={true}
                id='getinfo_proj'
                placeholder={selected.length > 1 ? 'Various' : selected[0].meta.ProjectLink[0]}
                onChange={null} />
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
        <p>Size : X Y</p>
        </div>
      );
    }

    return render;
  }

}