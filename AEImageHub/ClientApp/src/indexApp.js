import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap/dist/css/bootstrap-theme.css';
import './index.css';
import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter } from 'react-router-dom';
import App from './App';
import registerServiceWorker from './registerServiceWorker';
import {getCredentials, getToken} from "./adalConfig";
import  axios from "axios";

const baseUrl = document.getElementsByTagName('base')[0].getAttribute('href');
const rootElement = document.getElementById('root');

ReactDOM.render(
  <BrowserRouter basename={baseUrl}>
    <App />
  </BrowserRouter>,
  rootElement);
let done = 0;

function addUser(done) {
    if (done > 1) return;
    let token = getToken();
    let userID = getCredentials(token).oid;
    console.log(getCredentials(token));
    let exists = false;
    console.log(token);
    axios.get("api/user/" + userID,  { headers: { 'Authorization': "bearer " + getToken() } })
        .then(function (res) {
            exists = true;
            done++;
        }).catch(function (err) {
    }).finally(function (cont) {
        if (!exists) {
            axios.post("api/user", null, { headers: { 'Authorization': "bearer " + getToken() } })
                .then(function (res) {
                    console.log("hmm")
                })
                .catch(function (err) {
                    console.log(err)
                })
        }
    })


}

addUser(done);

registerServiceWorker();
