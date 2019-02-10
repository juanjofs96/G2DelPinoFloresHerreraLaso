var charData=[
['Estudiantes aprobados con Academia Politecnica de Nivelacion',100],
['Estudiantes reprobados',37]
];

var chart;

addChart = function(){
	chart = c3.generate({
		bindto: "#grafica",
		data: {
			type: 'bar',
			columns: charData
		}
	})
}

$('.calendario.index').ready(function(){
	addChart();

})

function grafico1(){

	d3.json("http://localhost:3000/grafico1.json", function(error, data){
		console.log(data);
	})

}