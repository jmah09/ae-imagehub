class SearchForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            value_1: 
            classification: 'name',
            dateInputState: 'hidden'
        };

        this.handleListChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleListChange(e) {
        this.state.classification = e.target.value;
        if (e.target.value === 'date') {
            this.state.dateInputState = 'text';
        } else {
            this.state.dateInputState = 'hidden';
        }
    }

    handleTextChange(e) {
        this.state[e.target.id] = e.target.value;
    }

    // TODO
    handleSubmit() {
        // AXIOS POST REQUEST
        // all inputs are in this.state
        // - this.state.classification
        // - this.state.input_1 (potentially start date)
        // - if this.state.classification == date, then
        //     this.state.input_2 (end date)
    }

    render() {
        return (
            <form id="search" onSubmit={this.handleSubmit}>
                <select value={this.state.value} onChange={this.handleListChange}>
                    <option value="name">Name</option>
                    <option value="classification">Classification</option>
                    <option value="project">Project</option>
                    <option value="metadata">Metadata</option>
                    <option value="user">User</option>
                    <option value="date">Date</option>
                </select>
                <br /><br />

                <input type="text" id="input_1" onChange={this.handleTextChange}></input>
                <input type={this.state.dateInputState} id="input_2">yyyymmdd</input>
                <br /><br />


                <button type="submit">Search</button>
            </form>
        )
    }
}