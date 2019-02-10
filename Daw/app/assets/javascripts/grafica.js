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
	const width = 540;
    const height = 540;
    const radius = Math.min(width, height) / 2;

    const svg = d3.select("#chart-area")
        .append("svg")
            .attr("width", width)
            .attr("height", height)
        .append("g")
            .attr("transform", `translate(${width / 2}, ${height / 2})`);

    const color = d3.scaleOrdinal(["#66c2a5","#fc8d62","#8da0cb",
         "#e78ac3","#a6d854","#ffd92f"]);

    const pie = d3.pie()
        .value(d => d.count)
        .sort(null);

    const arc = d3.arc()
        .innerRadius(0)
        .outerRadius(radius);

    function type(d) {
        d.apples = Number(d.apples);
        d.oranges = Number(d.oranges);
        return d;
    }

    function arcTween(a) {
        const i = d3.interpolate(this._current, a);
        this._current = i(1);
        return (t) => arc(i(t));
    }


	d3.json("http://localhost:3000/grafico1.json", function(error, data){
		console.log(data);
	})

}