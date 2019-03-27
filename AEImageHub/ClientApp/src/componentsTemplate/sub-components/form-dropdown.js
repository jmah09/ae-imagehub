import React, { Component } from 'react';

export class Dropdown extends Component {

    constructor(props)
    {   
        super(props);
    }

    render()
    {
        return (
            <select id={this.props.id} onChange={this.props.onChange}>
                {this.renderList()}
            </select>
        )
    }

    renderList = () =>
    {
        let render = [];

        let keys = Object.keys(this.props.options);

        render.push(
            <option key='drop_0' value={keys[0]} style={{ display: 'none' }}>
                {this.props.options[keys[0]]}
            </option>
        )

        for (let i = 1; i < keys.length; i++)
        {
            let name = this.props.options[keys[i]];
            render.push(
                <option key={'drop_'+i} value={keys[i]} name={name}>{name}</option>
            )
        }

        return render;
    }

}