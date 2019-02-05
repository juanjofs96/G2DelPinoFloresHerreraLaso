class EstudiantesController < ApplicationController
	before_action :authenticate_estudiante!
	
	def cuenta
		@testxd = "Hello World"
	end

	def vistaNotas
		@usuario = current_estudiante.cedula
		@notas = Calificacion.find_by estudiante: @usuario
	end

end
