class Test extends React.Component {
	constructor(props) {
	    super(props);
	    this.state = {
	      title: props.post
	    };
	}

	render() {
	    return (
	      <div>
	      	<h2>{this.state.title}</h2>
	      </div>
	    );
	}
}
