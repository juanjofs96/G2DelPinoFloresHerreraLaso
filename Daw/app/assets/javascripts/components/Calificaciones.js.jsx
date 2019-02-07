class Calificaciones extends React.Component{

	constructor(props) {
	    super(props);
	    this.idCurso = props.post.curso_id;
	    this.nota = props.post.nota
	    this.handleClick = this.handleClick.bind(this)
	    this.state = {
	      id: "",
	      nota: ""
	    };
	}

	handleClick() {
		this.setState({
			id: this.idCurso,
			nota: this.nota
		});
	}

	render(){
		return(

			<div>
				<button onClick={ (e) => {
					this.handleClick(); } }> Ver </button>
				<div>
	      			<h4>Curso:{this.state.id}</h4>
	      			<h4>Nota:{this.state.nota}</h4>
	      		</div>
			</div>
		);
	}
	
}