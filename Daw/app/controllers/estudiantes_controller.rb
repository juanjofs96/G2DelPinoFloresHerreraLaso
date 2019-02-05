class EstudiantesController < ApplicationController
	before_action :authenticate_estudiante!
	
	def cuenta
		@testxd = "Hello World"
	end

	def vistaNotas
		@usuario = current_estudiante.cedula
		@notas = Calificacion.find_by estudiante: @usuario
	end

	def update
		domicilio = params[:domicilio]
		#NO LEE DOMICILIO 
		current_estudiante.domicilio = domicilio
		current_estudiante.save
	end

	def delete
		puts Inscripcion.where(:estudiante => current_estudiante)
	end

end
