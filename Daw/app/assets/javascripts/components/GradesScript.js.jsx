class GradesScript extends React.Component {
	constructor(props) {
	    super(props);
	    this.state = {
	      title: props.post.nota,
	      cedula: props.post.estudiante,
	      curso: props.post.curso
	    };
	}

	render() {
	    return (
	      <div>
	      	<h2>{this.state.title}</h2>
	      	<h2>Nombre:{this.state.cedula}</h2>
	      	<h2>Curso:{this.state.curso}</h2>
	      </div>
	    );
	}
}