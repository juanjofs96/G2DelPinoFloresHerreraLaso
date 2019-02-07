
var svg = d3.select("svg"),
            width = svg.attr("width"),
            height = svg.attr("height"),
            radius = Math.min(width, height) / 2;
        
         var g = svg.append("g")
            .attr("transform", "translate(" + width / 2 + "," + height / 2 + ")");

         var color = d3.scaleOrdinal([
            'gray', 'green', 'brown'
         ]);
         
         var pie = d3.pie().value(function(d) { 
            return d.percent; 
         });
         
         var path = d3.arc()
            .outerRadius(radius - 10).innerRadius(0);
        
         var label = d3.arc()
            .outerRadius(radius).innerRadius(radius - 80);
         
         d3.csv("populations.csv", function(error, data) {
            if (error) {
               throw error;
            }
            
            var arc = g.selectAll(".arc")
               .data(pie(data))
               .enter()
               .append("g")
               .attr("class", "arc");
            
            arc.append("path")
               .attr("d", path)
               .attr("fill", function(d) { return color(d.data.states); });
        
            console.log(arc)
        
            arc.append("text").attr("transform", function(d) { 
               return "translate(" + label.centroid(d) + ")"; 
            })
            
            .text(function(d) { return d.data.states; });
         });
         
         svg.append("g")
            .attr("transform", "translate(" + (width / 2 - 120) + "," + 20 + ")")
            .append("text").text("Top population states in india")
            .attr("class", "title")
            

//grafico #1
/*
var margin = {top: 20, right: 20, bottom: 70, left: 40},
    width = 600 - margin.left - margin.right,
    height = 300 - margin.top - margin.bottom;

var x = d3.scale.ordinal().rangeRoundBands([0, width], .05);

var y = d3.scale.linear().range([height, 0]);

var xAxis = d3.svg.axis()
    .scale(x)
    .orient("bottom")
    .ticks(10);

var yAxis = d3.svg.axis()
    .scale(y)
    .orient("left")
    .ticks(10);

var svg = d3.select("#g2").append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
    .append("g")
    .attr("transform", 
          "translate(" + margin.left + "," + margin.top + ")");

d3.csv("<%= asset_path 'pruebainscripcion.csv' %>", function(error, data) {

    data.forEach(function(d) {
        d.estudiantes = +d.estudiantes;
    });
   
  x.domain(data.map(function(d) { return d.curso; }));
  y.domain([0, d3.max(data, function(d) { return d.estudiantes; })]);

  svg.append("g")
      .attr("class", "x axis")
      .attr("transform", "translate(0," + height + ")")
      .call(xAxis)
    .selectAll("text")
      .style("text-anchor", "end")
      .attr("dx", "-.8em")
      .attr("dy", "-.55em")
      .attr("transform", "rotate(-90)" );

  svg.append("g")
      .attr("class", "y axis")
      .call(yAxis)
    .append("text")
      .attr("transform", "rotate(-90)")
      .attr("y", 6)
      .attr("dy", ".71em")
      .style("text-anchor", "end")
      .text("Value ($)");

  svg.selectAll("bar")
      .data(data)
    .enter().append("rect")
      .style("fill", "steelblue")
      .attr("x", function(d) { return x(d.curso); })
      .attr("width", x.rangeBand())
      .attr("y", function(d) { return y(d.estudiantes); })
      .attr("height", function(d) { return height - y(d.estudiantes); });

});


