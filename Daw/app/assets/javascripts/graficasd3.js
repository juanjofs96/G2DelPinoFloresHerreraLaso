var data = [10, 5, 12, 15];
         
         var width = 600, 
            scaleFactor = 20, 
            height = 500,
            barPadding = 10;
         var barWidth = (width/data.length);
         
         var graph = d3.select("#g1")
            .append("svg")
            .attr("width", width)
            .attr("height", height);
         
         var bar = graph.selectAll("g")
            .data(data)
            .enter()
            .append("g")
            .attr("transform", function(d, i) {
               var translate = [barWidth * i,0];
               return "translate(" + translate+ ")";
            })
            .attr("y", function(d){
               return height-d;
            });

         bar.append("rect").attr("width", function(d) {
            return d * scaleFactor;
         })
         .attr("height", barWidth-barPadding);
            
         
         bar.append("text")
            .attr("y", function(d) { return (d*scaleFactor); })
            .attr("x", barWidth / 2)
            .attr("dx", ".35em")
            .text(function(d) { return d; });

         