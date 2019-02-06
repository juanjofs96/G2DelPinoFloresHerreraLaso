class Calificaciones extends React.Component{
	constructor(props) {
	    super(props);
	    this.state = {
	      id: props.post.id,
	      nombre: props.post.nombre
	    };
	}

	handleClick() {
		this.setState({
			id:"caca",
			nombre: "test"
		});
	}

	render(){
		return(

			<div>
				<button onClick={ (e) => {this.handleClick(); } }> Ver </button>
				<div>
	      			<h2>Id:{this.state.id}</h2>
	      			<h2>Nombre:{this.state.nombre}</h2>
	      		</div>
			</div>
		);
	}
	
}