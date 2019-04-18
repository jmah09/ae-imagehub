import React, { Component } from 'react';
import Clarifai from 'clarifai';


/*
export class clarifai extends Component {
    constructor(props) {
        super(props);
        
        // initialize with your api key.
        const app = new Clarifai.App({
            apiKey: '3f58cbf6a79842edaccb02b4b0a3b9b3'  // API key from clarifai, from NLGPSAG.
            // A new key can also be obtained from clarifai.com, if you wish to do so
        });
        
        
    };
    
    
    testFunction() {
        app.models.initModel({id: Clarifai.GENERAL_MODEL, version: "aa7f35c01e0642fda5cf400f543e7c40"})
            .then(generalModel => {
                console.log( generalModel.predict("https://samples.clarifai.com/metro-north.jpg") );
            })
            .then(response => {
                console.log("now doing concepts");
                var concepts = response['outputs'][0]['data']['concepts']
                console.log(concepts);
            })
    };
    
    
}
*/



// todo: FOR EXPLAINING TO OURSELVES
// just run "npm install clarifai" to install

// initialize with your api key.
const app = new Clarifai.App({
    apiKey: '3f58cbf6a79842edaccb02b4b0a3b9b3'  // API key from clarifai, from NLGPSAG.
    // A new key can also be obtained from clarifai.com, if you wish to do so
});


app.models.initModel({id: Clarifai.GENERAL_MODEL, version: "aa7f35c01e0642fda5cf400f543e7c40"})
    // Clarifai.GENERAL_MODEL is which category of images the AI is trained against; for a list of id's (models), refer to:
    // https://github.com/Clarifai/clarifai-javascript/blob/master/src/index.js
    
// For a catalogue-ish thing for models, see https://clarifai.com/models
    .then(generalModel => {
        // this would return a response that has categories nested inside
        // see for exact response, and documentation: https://clarifai.com/developer/guide/predict#images
        console.log( generalModel.predict("https://samples.clarifai.com/metro-north.jpg") );
    })
    .then(response => {
        console.log("now we can see where the tags are specifically");
        var concepts = response['outputs'][0]['data']['concepts']; // the [0] is because we only have 1 image
        // API is said to support up to 128 at once, I think
        console.log(concepts);
    })


app.models.predict(Clarifai.GENERAL_MODEL, {base64: "G7p3m95uAl..."}).then(
    // different way of predicting image, with bytes. See for details: https://clarifai.com/developer/guide/predict#images
    function(response) {
        // do something with response
    },
    function(err) {
        // there was an error
    }
);