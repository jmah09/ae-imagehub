import React, { Component } from 'react';
import { Title } from '../Title';
import { TextInput } from './form-text-input';
import { Dropdown } from './form-dropdown';
import { Redirect } from 'react-router-dom';

import './get-info.css';

export class GetInfo extends Component {

    constructor(props)
    {

        super(props);

        this.state = {
            photos: props.location.state.photos,

            redirect: false
        }

    }

    //
    // helper
    //

    // TODO
    listItems(photo, item) 
    {

        let str = 'TEST';
    
        if (item === 'classification') {
            str = photo.TagLink[0] || '';
    
            for (let i = 1; i < photo.TagLink.length; i++) {
                str += photo.TagLink[i];
    
            }
        }
    
        else if (item === 'project') {
            str = photo.ProjectLink[0] || '';
    
            for (let i = 1; i < photo.ProjectLink.length; i++) {
                str += photo.ProjectLink[i];
    
            }
        }
    
        return str;
    }

    // TODO
    handleProjectChange = (e) =>
    {
        let selected = this.state.photos.filter((value, index, array) => {
            return value.selected;
        });

        const unselected = this.state.photos.filter((value, index, array) => {
            return !value.selected;
        });

        selected.forEach((img) => { img.ProjectLink = [e.target.value] });

        selected.concat(unselected);

        this.setState({ toSubmit: selected });
    }

    // TODO
    handleClassificationChange = (e) =>
    {
        let selected = this.state.photos.filter((value, index, array) => {
            return value.selected;
        });

        const unselected = this.state.photos.filter((value, index, array) => {
            return !value.selected;
        });

        let tag = e.target.value;

        selected.forEach((img) => {
            if (!img.meta.TagLink.includes(tag)) {
                img.meta.TagLink.push(tag)
            }
        });

        selected.concat(unselected);

        this.setState({ toSubmit: selected });
    }

    onCancel = () =>
    {
        this.setState({ redirect: true });
    }

    // TODO
    onSave = () =>
    {
        // MAKE EDITS HERE AND SEND CHANGED INFO BACK
        this.setState({ redirect: true });
    }
    
    //
    // redirect
    //
    renderRedirect = () =>
    {
        let redirectLink = 'palette';

        if (this.state.redirect)
        {
            return <Redirect to={redirectLink} />;
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

        const class_options = {
            '': placeholder,
            'b': 'Bridge',
            'd': 'Dam',
            'ri': 'river',
            'ro': 'road'
        }

        return (
            <div id="getinfo">
                <div className="float-left">
                {this.renderImages()}
                </div>

                <div className="float-right">
                    <h2>TITLE :</h2>
                    <p>
                        <TextInput 
                            disabled={false}
                            id='getinfo_title'
                            placeholder={selected.length > 1 ? 'Various' : selected[0].meta.imageName}
                            onChange={null} />
                        <br />
                    </p>
                    <h2>DATE :</h2>
                    <p>
                        <TextInput 
                            disabled={false}
                            id='getinfo_date'
                            placeholder={selected.length > 1 ? 'Various' : selected[0].meta.uploadedDate}
                            onChange={null} />
                        <br />
                    </p>
                    <h2>USER :</h2>
                    <p>
                        <TextInput 
                            disabled={false}
                            id='getinfo_user'
                            placeholder={selected.length > 1 ? 'Various' : selected[0].meta.uId}
                            onChange={null} />
                        <br />
                    </p>
                    <h2>CLASSIFICATION :</h2>
                    <p>
                        <Dropdown
                            id="getinfo-class"
                            options={class_options}
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
                <img key={'img_'+i} src={this.state.photos[i].src} />
            );
        }

        return render;
    }


}