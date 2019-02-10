class Grafico3Controller < ApplicationController
	def index
		@test = Curso.select(:profesor_id).group(:materium_id).count
    	render json: @test, each_serializer: CursoSerializer
    end
end
