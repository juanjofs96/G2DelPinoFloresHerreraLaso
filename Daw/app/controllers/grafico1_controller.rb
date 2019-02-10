class Grafico1Controller < ApplicationController
	def index
		@test = Inscripcion.all
    	render json: @test, each_serializer: InscripcionSerializer
    end
end
