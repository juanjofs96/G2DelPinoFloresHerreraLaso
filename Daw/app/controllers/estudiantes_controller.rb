class EstudiantesController < ApplicationController
	before_action :authenticate_estudiante!
	respond_to :html, :js

	def cuenta
		@estudiante = current_estudiante
		@notas = Calificacion.find_by estudiante: @estudiante.cedula

		@tmp = Inscripcion.where(estudiante_id: @estudiante.id)
		@cursoList = []
		@tmp.each do |m|
			c = Curso.find(m.curso_id)
			@cursoList.push(c)
		end
		
	end


	def edit 
		@estudiante = current_estudiante
	end

	def testaso
		@curso = Curso.find(params[:id_curso])
		@nombre = @curso.nombre
	end

	def update
		@estudiante = current_estudiante
		@estudiante.update(domicilio: params[:domicilio])
		redirect_to '/estudiantes/cuenta'

	end

	def delete
		puts Inscripcion.where(:estudiante => current_estudiante)
	end

	private
    def estudiante_params
        params.require(:estudiante).permit(:email, :encrypted_password, :cedula, :nombres, :apellidos, :fecha_nac, :domicilio)
    end

end
