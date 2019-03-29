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


export class Submit extends Component {
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
        
        this.GetUserImages = this.GetUserImages.bind(this);
        this.getProjectOptions = this.getProjectOptions.bind(this);
        this.onCancel = this.onCancel.bind(this);
        this.onDropdownChange = this.onDropdownChange.bind(this);
        this.onSubmit = this.onSubmit.bind(this);
        
        this.GetUserImages();
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

    // get Images with the userid
    GetUserImages() {
        // todo hardcoded for now
        let token = getToken();
        let userid = getCredentials(token).name;
        console.log(userid);
        if (this.state.admin) { 
            // todo add check for validId
            console.log("ok");
            //userid = this.state.userId
        }
        axios.get("/api/user/" + userid + "/images", {headers: {'Authorization': "bearer " + token}})
            .then(res => {
                var images = [];
                res.data.map((image, index) => {
                    images.push({
                        src: "/api/image/" + image.IId, width: 5, height: 4, alt: image.IId, meta: image
                    });
                })
                this.setState({photos: images})
            })
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
    
    onSubmit(){
        if(!this.state.project){
            alert("please select a project");
            return;
        }
        
        let images = [];
        for(let i = 0 ; i < this.state.images.length ; i++){
            images.push(this.state.images[i].meta.IId);
        }

        console.log("123456");
        console.log({ images: images, project: this.state.project});
        axios({
            url: '/api/submit',
            method: 'POST',
            data: { images: images, project: this.state.project},
            headers: {
                'Authorization': "bearer " + getToken()
            }
        }).then(res => {
            console.log(res.data);
            this.setState({
                redirect: true
            })
        })
    }
    
    onDropdownChange(event, data){
        this.setState({project:data.value});
    }
    
    renderFunction() {
        return (
            <div class="fnbar">
            {this.renderRedirect()}
                <div className="submit-container">
                    <div style={dropdownStyle}>
                        <Dropdown
                            placeholder='Select Project'
                            fluid
                            search
                            selection
                            onChange={this.onDropdownChange}
                            options={this.state.projectOptions}
                        /></div>
                    <Button onClick={this.onSubmit} primary>Submit</Button>
                    <Button onClick={this.onCancel} primary>Cancel</Button>
                </div>
            
            </div>
        )
    }
    
    renderContent() {
        console.log(this.state.images);
        const listItems = this.state.images.map((i) =>
            <li><p><b>Name: </b>{i.meta.ImageName}</p><img src={i.src} alt="" className="img-responsive" width="800px" height="800px"/><br/></li>
        );

        return (
            <div class="toggleButton">
                <ul>{listItems}</ul>
            </div>
        );
    }
}
