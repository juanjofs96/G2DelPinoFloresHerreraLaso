$(document).ready ->
	  $("#update_estudiantes").on("ajax:success", (event) ->
	    $("#test").append( "<p>xd</p>")
	  ).on "ajax:error", (event) ->
	    $("#update_estudiantes").append "<p>ERROR</p>"