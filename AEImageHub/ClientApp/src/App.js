import React, { Component } from 'react';
import { Route } from 'react-router';
import { Layout } from './componentsTemplate/Layout';
//import { Signin } from './componentsTemplate/Signin';
import { Home } from './componentsTemplate/Home';
import { Search } from './componentsTemplate/Search';
import { Palette } from './componentsTemplate/Palette';
import { GetInfo } from './componentsTemplate/sub-components/get-info';
import { Log } from './componentsTemplate/Log';
import { Trash } from './componentsTemplate/Trash';
import { Project } from './componentsTemplate/Project';
import { Metadata } from './componentsTemplate/Metadata';
import { User } from './componentsTemplate/User';
import { Upload } from './componentsTemplate/Upload';
import { ImageEditor } from './componentsTemplate/ImageEditor'
import { Submit } from './componentsTemplate/Submit'
import { LogView } from './componentsTemplate/LogView'
import {GetInfoTrash} from "./componentsTemplate/sub-components/get-info-trash";
import {RecoverTrash} from "./componentsTemplate/RecoverTrash";
import {AddUser} from "./componentsTemplate/sub-components/add-user";

export default class App extends Component {
    displayName = App.name

    render() {
        return (
            <Layout>
                <Route exact path='/' component={Home} />
                <Route path='/submit' component={Submit} />
                <Route path='/search' component={Search} />
                <Route path='/upload' component={Upload} />
                <Route path='/palette' component={Palette} />
                <Route path='/getinfo' component={GetInfo} />
                <Route path='/trashinfo' component={GetInfoTrash} />
                <Route path='/edit' component={ImageEditor} />
                <Route path='/log' component={Log} />
                <Route path='/logview' component={LogView} />
                <Route path='/trash' component={Trash} />
                <Route path='/project' component={Project} />
                <Route path='/metadata' component={Metadata} />
                <Route path='/user' component={User} />
                <Route path='/recover' component={RecoverTrash} />
                <Route path='/adduser' component={AddUser} />
            </Layout>
        );
    }
}