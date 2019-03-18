import React, { Component } from 'react';
import { Title } from './Title';
import ImageUploader from './custom-image-upload';

export class Upload extends Component {

    constructor(props) {
        super(props);
        this.state = { pictures: [] };
        this.onDrop = this.onDrop.bind(this);
    }

    onDrop(picture) {
        this.setState({
            pictures: this.state.pictures.concat(picture),
        });
    }

    render() {
        console.log(this.state.pictures);
        return (
            <div>
                <Title title='Upload' />
                {this.renderFunction()}
                {this.renderContent()}

                <ImageUploader
                    withIcon={true}
                    withPreview={true}
                    buttonText='Choose images'
                    onChange={this.onDrop}
                    imgExtension={['.jpg', '.gif', '.png', '.gif', '.PNG']}
                    maxFileSize={5242880}
                />
            </div>
        );
    }

    // TODO
    renderFunction() {
        return (
            <div class="fnbar">
            </div>
        )
    }

    // TODO
    renderContent() {
        return (
            <div>

            </div>
        )
    }

}
