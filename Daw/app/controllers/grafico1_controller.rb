class Grafico1Controller < ApplicationController
	def index
		@test = Inscripcion.group(:curso_id).count
    	render json: @test, each_serializer: InscripcionSerializer
    end
end
