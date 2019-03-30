import React, { Component } from 'react';
import { Image } from 'react-bootstrap';
import { Link } from 'react-router-dom';
import {getCredentials, getToken, authContext, getUser} from '../adalConfig';

import './Main.css';

import logo from './img/logo.png';

export class Header extends Component {
    SignOut() {
        authContext.logOut();
    }
    // TODO
    render() {

        let userid = getUser().profile.name;

        return (
            <div id="Header">
                <div id="hdricon">
                    <Link to={'/'}>
                        <Image src={logo} />
                    </Link>
                    <div id="hdrname">
                        <span>{userid}</span>
                        <button onClick={this.SignOut}>Sign Out</button>
                    </div>
                </div>
            </div>
        );
    }
}
