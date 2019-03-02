import React, { Component } from 'react';
import { Route } from 'react-router';
import { Layout } from './components/Layout';
import { Home } from './components/Home';
import { Upload } from './components/backend_test/Upload';
import { Image } from './components/backend_test/Image';
import { Project } from './components/backend_test/Project';
import { Tag } from './components/backend_test/Tag';
import { User } from './components/backend_test/User';
import { Log } from './components/backend_test/Log';

export default class App extends Component {
  displayName = App.name

  render() {
    return (
      <Layout>
        <Route exact path='/' component={Home} />
        <Route path='/backend_test/Upload' component={Upload} />
        <Route path='/backend_test/Image' component={Image} />
        <Route path='/backend_test/Project' component={Project} />
        <Route path='/backend_test/Tag' component={Tag} />
        <Route path='/backend_test/User' component={User} />
        <Route path='/backend_test/Log' component={Log} />
      </Layout>
    );
  }
}
