function addNew(titulo, contenido) {
   var title = $("<h5/>", {
      "class":"card-title",
      html: titulo
    })

    var p = $("<p/>",{
      "class": "card-text",
      html: contenido
    })

    var div = $( "<div/>", {
      "class": "card-body",
      "id": "news"

    });
    
    title.appendTo(div)
    p.appendTo(div)
    div.appendTo( "#noticias" );
}

function loadNewsJson() {
  
   $.getJSON("../noticias.json", function( data ) {
    
      $.each( data, function( key, val ) {
        addNew(val.titulo, val.descripcion)
      });
    
  });
}

function loadNewsXml() {
  
  $.ajax({
      type: "GET",
      url: "../noticias.xml",
      dataType: "xml",
      success: function(xml){
          $(xml).find('item').each(function(){
            var titulo = $(this).find('titulo').text();
            var contenido = $(this).find('descripcion').text();
            
            addNew(titulo, contenido)

          });
      },
      error: function() {
        alert("Error al procesar el xml");
      }
  });
}



$(document).ready(function(){
  loadNewsJson();
  //loadNewsXml();
  $("button").click(function(e){

    var texto = $('input#buscador').val();
    
    document.getElementById("info").innerHTML="Noticias filtradas "+"("+texto+")";

    if(texto.length != 0) {
      
      var noticias = $('#noticias .card-body');
      $('#noticias .card-body').filter(function(index){
        
        $(this).show();
        
        var noticia = $(this).text()
        if(noticia.indexOf(texto) == -1) {
          $(this).hide()
        }

      });

    } else {
      $('#noticias .card-body').each(function(){
        $(this).show();
        document.getElementById("info").innerHTML="Noticias recientes";
      });
    }

    return false;
    
  });
  
  $.ajax({
    type:"GET",
    url:"/cursos/todos",
    dataType:"json",
    success:function(result){
      result.forEach(function(e){
        $('#selectCurso').append($("<option />").val(e.id).text(e.id)); 
      });
    }
  });
  $.ajax({
    type:"GET",
    url:"/people/companeros",
    dataType:"json",
    success:function(result){
      result.forEach(function(e){
        console.log(e);
        //$('#selectCurso').append($("<option />").val(e.id).text(e.id)); 
      });
    }
  });
  $("#submitQueryPeople").click(function(e){

    var curso = $("#selectCurso").val()
    var domain = location.protocol + "//" + location.host
    console.log(curso)
    console.log(domain)
    $(location).attr('href',domain+"/people/inscritos?id="+curso);

  });
});
