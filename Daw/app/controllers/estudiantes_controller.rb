class EstudiantesController < ApplicationController
	before_action :authenticate_estudiante!
	respond_to :html, :js

	def cuenta
		@usuario = current_estudiante.cedula
		@notas = Calificacion.find_by estudiante: @usuario
		@estudiante = current_estudiante
		@tmp = Inscripcion.where(estudiante_id: @estudiante.id)
		@cursoList = []
		@tmp.each do |m|
			c = Curso.find(m.curso_id)
			@cursoList.push(c)
		end
		
	end

	def vistaNotas
		@usuarioTmp = current_estudiante.cedula
		@notasTmp= Calificacion.where(estudiante_id: @usuario)
		@notasList =[]
		@notasTmp.each do |l|
			@notasList.push(l)
		
	end

	def edit 
		@estudiante = current_estudiante
	end


	def update
		@estudiante = current_estudiante

		#@estudiante = current_estudiante
		#puts @estudiante.cedula
		#domicilio = params[:domicilio]
		#NO LEE DOMICILIO 
		#current_estudiante.domicilio = domicilio
		#current_estudiante.save
		#puts @estudiante.cedula
		@estudiante.update(domicilio: params[:domicilio])
		puts "DOMICILIOOOOO"
		puts params[:domicilio]
		puts "VEEEEEEEEEEEEEEEEERRRRRRRRRRRRRRRRRRRRRGAAAAAAAAAAAAAAAAAAAAAA"
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

end
