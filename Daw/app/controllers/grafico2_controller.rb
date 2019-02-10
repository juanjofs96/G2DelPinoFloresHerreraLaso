class Grafico2Controller < ApplicationController
	def index
		@test = Inscripcion.group(:estudiante_id).count
    	render json: @test, each_serializer: InscripcionSerializer
    end
end
