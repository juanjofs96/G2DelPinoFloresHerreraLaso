class GradesScript extends React.Component {
	constructor(props) {
	    super(props);
	    this.state = {
	      id: props.post.id,
	      nombre: props.post.nombre
	    };
	}

	render() {
	    return (
	      <div>
	      	<h2>{this.state.id}</h2>
	      	<h2>Nombre:{this.state.nombre}</h2>
	      </div>
	    );
	}
}