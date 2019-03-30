import React, { Component } from 'react';
import { Title } from './Title';
import '../index.css';
import axios from 'axios'
import {getCredentials, getToken, isAdmin} from '../adalConfig';
import { Redirect } from 'react-router-dom'
import { Button } from 'semantic-ui-react'


export class LogView extends Component {
    constructor(props) {
        super(props);
        let params = new URLSearchParams(window.location.search);
        console.log(JSON.parse(params.get('src')));
        this.state = {
            images: [],
            redirect: false,
            admin: false,
            validId: false,
            userId: "",
            logid: JSON.parse(params.get('src'))
        };
        
        this.getLogImages = this.getLogImages.bind(this);
        this.onCancel = this.onCancel.bind(this);
        this.componentDidMount();
        this.getLogImages();
    }
    
    getLogImages(){
        axios.get("/api/log/view/" + this.state.logid, { headers: { 'Authorization': "bearer " + getToken() } })
            .then(res => {
                console.log(res.data);
                let images = [];
                for(let i = 0 ; i < res.data.length; i++){
                    images.push(res.data[i].IId);
                }
                this.setState({images:images});
            })
    }

    componentDidMount() {
        let param = this.props.location.search;
        this.state.userId = param.substring(1, param.indexOf("@"));
        this.state.admin = isAdmin(getToken());
        console.log(this.state.admin);
        // todo valid id logic [have to change db]
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
        let redirectLink = 'log';
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
            <div>
            {this.renderRedirect()}
                <div className="submit-container">
                    <Button onClick={this.onCancel} primary>Back</Button>
                </div>
            
            </div>
        )
    }
    
    renderContent() {
        const listItems = this.state.images.map((i) =>
            <li><img src={"/api/image/" + i} alt="" className="img-responsive" width="800px" height="800px"/><br/></li>
        );
        return (
            <div>
                <p>{this.state.images.length + " Image(s) submitted"}</p>
                <ul>{listItems}</ul>
            </div>
        );
    }
}
