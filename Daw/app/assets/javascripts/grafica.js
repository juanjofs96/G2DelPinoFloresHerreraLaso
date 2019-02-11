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

	const svg = d3.select("#chart1"), 
	margin = {top: 20, right: 20, bottom: 30, left: 40}, 
	width = +svg.attr("width") - margin.left - margin.right, 
	height = +svg.attr("height") - margin.top - margin.bottom, 
	x = d3.scaleBand().rangeRound([0, width]).padding(0.2), 
	y = d3.scaleLinear().rangeRound([height, 0]), 
	g = svg.append("g") 
		.attr("transform", `translate(${margin.left},${margin.top})`); 

	var array = [];	
	d3.json("http://localhost:3000/grafico1.json").then(function(data,error) {
		console.log(data);
		var key;
		

		for(key in data){
    		if(data.hasOwnProperty(key)){
        		array.push({'curso' : key, 'estudiantes' : data[key]});
    		}
		}
		

		x.domain(array.map(d => d.curso)); 
		y.domain([0, d3.max(array, d => d.estudiantes)]); 
		 
		g.append("g") 
		.attr("class", "axis axis-x") 
		.attr("transform", `translate(0,${height})`) 
		.call(d3.axisBottom(x)); 
		 
		g.append("g") 
		.attr("class", "axis axis-y") 
		.call(d3.axisLeft(y).ticks(10)); 
 		

		g.selectAll(".bar") 
		.data(array) 
		.enter().append("rect") 
		.attr("class", "bar") 
		.attr("x", d => x(d.curso)) 
		.attr("y", d => y(d.estudiantes)) 
		.attr("width", x.bandwidth()) 
		.attr("height", d => height - y(d.estudiantes)); 
		console.log(array);

	});	
}


function grafico2(){

	const svg = d3.select("#chart2"), 
	margin = {top: 20, right: 20, bottom: 30, left: 40}, 
	width = +svg.attr("width") - margin.left - margin.right, 
	height = +svg.attr("height") - margin.top - margin.bottom, 
	x = d3.scaleBand().rangeRound([0, width]).padding(0.2), 
	y = d3.scaleLinear().rangeRound([height, 0]), 
	g = svg.append("g") 
		.attr("transform", `translate(${margin.left},${margin.top})`); 

	var array = [];	
	d3.json("http://localhost:3000/grafico2.json").then(function(data,error) {
		console.log(data);
		var key;
		

		for(key in data){
    		if(data.hasOwnProperty(key)){
        		array.push({'estudiante' : key, 'cursos' : data[key]});
    		}
		}
		

		x.domain(array.map(d => d.estudiante)); 
		y.domain([0, d3.max(array, d => d.cursos)]); 
		 
		g.append("g") 
		.attr("class", "axis axis-x") 
		.attr("transform", `translate(0,${height})`) 
		.call(d3.axisBottom(x)); 
		 
		g.append("g") 
		.attr("class", "axis axis-y") 
		.call(d3.axisLeft(y).ticks(10)); 
 		
		
		g.selectAll(".bar") 
		.data(array) 
		.enter().append("rect") 
		.attr("class", "bar") 
		.attr("x", d => x(d.estudiante)) 
		.attr("y", d => y(d.cursos)) 
		.attr("width", x.bandwidth()) 
		.attr("height", d => height - y(d.cursos)); 
		console.log(array);

	});	
}

function grafico3(){

	const svg = d3.select("#chart3"), 
	margin = {top: 20, right: 20, bottom: 30, left: 40}, 
	width = +svg.attr("width") - margin.left - margin.right, 
	height = +svg.attr("height") - margin.top - margin.bottom, 
	x = d3.scaleBand().rangeRound([0, width]).padding(0.2), 
	y = d3.scaleLinear().rangeRound([height, 0]), 
	g = svg.append("g") 
		.attr("transform", `translate(${margin.left},${margin.top})`); 

	var array = [];	
	d3.json("http://localhost:3000/grafico3.json").then(function(data,error) {
		console.log(data);
		var key;
		

		for(key in data){
    		if(data.hasOwnProperty(key)){
        		array.push({'materia' : key, 'profesores' : data[key]});
    		}
		}
		

		x.domain(array.map(d => d.materia)); 
		y.domain([0, d3.max(array, d => d.profesores)]); 
		 
		g.append("g") 
		.attr("class", "axis axis-x") 
		.attr("transform", `translate(0,${height})`) 
		.call(d3.axisBottom(x)); 
		 
		g.append("g") 
		.attr("class", "axis axis-y") 
		.call(d3.axisLeft(y).ticks(10)); 
 		

		g.selectAll(".bar") 
		.data(array) 
		.enter().append("rect") 
		.attr("class", "bar") 
		.attr("x", d => x(d.materia)) 
		.attr("y", d => y(d.profesores)) 
		.attr("width", x.bandwidth()) 
		.attr("height", d => height - y(d.profesores)); 
		console.log(array);

	});	
}



function grafico4(){
	const width = 540;
    const height = 540;
    const radius = Math.min(width, height) / 2;

    const svg = d3.select("#chart")
        .append("svg")
            .attr("width", width)
            .attr("height", height)
        .append("g")
            .attr("transform", `translate(${width / 2}, ${height / 2})`);

    const color = d3.scaleOrdinal(["#66c2a5","#fc8d62","#8da0cb",
         "#e78ac3","#a6d854","#ffd92f"]);

    const pie = d3.pie()
        .value(d => d.estudiante_id)
        .sort(null);

    const arc = d3.arc()
        .innerRadius(0)
        .outerRadius(radius);

	d3.json("http://localhost:3000/grafico1.json", function(error, data){
		console.log(data);
	})

}