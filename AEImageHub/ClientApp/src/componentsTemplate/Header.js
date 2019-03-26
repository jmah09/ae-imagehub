import React, { Component } from 'react';
import { Image } from 'react-bootstrap';
import { Link } from 'react-router-dom';
import './Main.css';

import logo from './img/logo.png';

export class Header extends Component {

    // TODO
    render() {
        return (
            <div id="Header">
                <div id="hdricon">
                    <Link to={'/'}>
                        <Image src={logo} />
                    </Link>
                    <div id="hdrname">
                        <span>NAME PLACEHOLDER</span>
                        <button>SIGN OUT</button>
                    </div>
                </div>
            </div>
        );
    }
}
