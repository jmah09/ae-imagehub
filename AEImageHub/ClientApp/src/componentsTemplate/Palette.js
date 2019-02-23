import React, { Component } from 'react';
import { Title } from './Title';
//import { Col, Row, Grid, Image } from 'react-bootstrap';
import Gallery from 'react-photo-gallery';
import hooverdam from './img/hooverdam.jpg';
import clevelanddam from './img/clevelanddam.jpg';
import enguridam from './img/enguridam.jpg';
import threegorgesdam from './img/threegorgesdam.jpg'


var photos = [
    {src: hooverdam, width: 1, height: 1},
    {src: clevelanddam, width: 1, height: 1},
    {src: hooverdam, width: 1, height: 1},
    {src: hooverdam, width: 1, height: 1},
    {src: hooverdam, width: 1, height: 1},
    {src: hooverdam, width: 1, height: 1},
    {src: hooverdam, width: 1, height: 1},
    {src: hooverdam, width: 1, height: 1},
    {src: clevelanddam, width: 1, height: 1},
    {src: clevelanddam, width: 1, height: 1},
    {src: clevelanddam, width: 1, height: 1},
    {src: clevelanddam, width: 1, height: 1},
    {src: enguridam, width: 1, height: 1},
    {src: enguridam, width: 1, height: 1},
    {src: enguridam, width: 1, height: 1},
    {src: enguridam, width: 1, height: 1},
    {src: enguridam, width: 1, height: 1},
    {src: enguridam, width: 1, height: 1},
    {src: enguridam, width: 1, height: 1},
    {src: enguridam, width: 1, height: 1},
    {src: threegorgesdam, width: 1, height: 1},
    {src: threegorgesdam, width: 1, height: 1}
]

export class Palette extends Component {

    render() {
        return (
            <div>
            <div>
                <div>
                    <Title title='PALETTE' />
                    <div>{this.renderFunction()}</div>
                </div>
            </div>
            <div id="palcontent">
                {this.renderContent()} 
            </div>
            </div>
        );
    }

    // TODO
    renderFunction() {
        return (
            <div class="fnbar">
                <button>Get Info</button>
                <button>Edit Photo</button>
                <button>Submit</button>
                <button>Delete</button>
            </div>
        )
    }

    // TODO
    renderContent() {
        return (
        <Gallery direction={'row'} columns={6} margin={5} photos={photos} />
        )
    
                // {/* logic: make a call to database to extract a specific user palette's photos  
                // for each photo, we want to create an html element that will be "injected" into div container
                // finally, render it on the screen. */}     
    }

}
