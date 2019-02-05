class EstudiantesController < ApplicationController
	before_action :authenticate_estudiante!
	
	def cuenta
		@testxd = "Hello World"
	end

	def vistaNotas
		@usuario = current_estudiante.cedula
	end

end
