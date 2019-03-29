import React, { Component } from 'react';
import { Title } from './Title';
import '../index.css';
import axios from 'axios'
import {getCredentials, getToken, isAdmin} from '../adalConfig';
import { Redirect } from 'react-router-dom'
import { Dropdown } from 'semantic-ui-react'
import { Button } from 'semantic-ui-react'

const dropdownStyle = {
    width: '350px',
    marginRight: '20px'
};

export class LogView extends Component {
    constructor(props) {
        super(props);
        let params = new URLSearchParams(window.location.search);
        console.log(JSON.parse(params.get('src')));
        this.state = {
            images: JSON.parse(params.get('src')),
            redirect: false,
            admin: false,
            validId: false,
            userId: "",
            project: null,
            projectOptions: []
        };
        
        this.getProjectOptions = this.getProjectOptions.bind(this);
        this.onCancel = this.onCancel.bind(this);
        this.onSubmit = this.onSubmit.bind(this);
        
        this.componentDidMount();
        this.getProjectOptions();
    }

    componentDidMount() {
        let param = this.props.location.search;
        this.state.userId = param.substring(1, param.indexOf("@"));
        this.state.admin = isAdmin(getToken());
        console.log(this.state.admin);
        // todo valid id logic [have to change db]
    }
    
    getProjectOptions(){
        axios.get("/api/project", { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                let projectOptions = [];
                for(let i = 0 ; i < res.data.length; i++){
                    let projectName = res.data[i].ProjectName;
                    projectOptions.push({key: projectName, value: projectName , text: projectName});
                }
                this.setState({projectOptions:projectOptions});
            })
    }


    render() {
        return (
            <div>

                <div>
                    <div>
                        <Title title='SUBMIT IMAGES'/>
                        <div>{this.renderFunction()}</div>
                    </div>
                </div>
                <div style={{padding: 50}}>
                    {this.renderContent()}
                </div>
            </div>
        );
    }

    renderRedirect = () => {
        let redirectLink = 'palette';
        if (this.state.redirect) {
            return <Redirect to={redirectLink}/>
        }
    }
    
    onCancel(){
        this.setState({
            redirect: true
        })
    }
    
    renderFunction() {
        return (
            <div class="fnbar">
            {this.renderRedirect()}
                <div className="submit-container">
                    <Button onClick={this.onCancel} primary>Back</Button>
                </div>
            
            </div>
        )
    }
    
    renderContent() {
        const listItems = this.state.images.map((i) =>
            <li><p><b>Name: </b>{i.meta.ImageName}</p><img src={i.src} alt="" className="img-responsive" width="800px" height="800px"/><br/></li>
        );
        return (
            <div>
                <ul>{listItems}</ul>
            </div>
        );
    }
}
