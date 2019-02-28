import React, { Component } from 'react';
import axios from 'axios'

export class Home extends Component {
  displayName = Home.name

  render() {
    return (
      <div>
        <h1>Hello, there!</h1>
            <p>Welcome to AE-imagehub</p>
      </div>
    );
  }
}
