import React, { Component } from 'react';
import { Redirect } from 'react-router-dom';

export class Submit extends Component {

    constructor(props)
    {

        super(props);

        this.state = {
            redirect: false
        }
    }

    setRedirect = () => {
        this.setState({ redirect: true });
    };

    renderRedirect = () => {
        let redirectLink = 'palette';

        if (this.state.redirect)
        {
            return <Redirect to={redirectLink} />;
        }
    };

    render() {
        return (
            <div>
                {this.renderRedirect()}
                <button onClick={this.setRedirect}>Cancel</button>
            </div>
        );
    }

}