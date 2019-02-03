class EstudiantesController < ApplicationController
	before_action :authenticate_estudiante!
	
	def cuenta
		@testxd = "Hello World"
	end


end
