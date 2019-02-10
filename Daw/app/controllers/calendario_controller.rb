class CalendarioController < ApplicationController
  def index
  	@materia = Materium.all
  	file = "app/assets/javascripts/pruebamateria.csv"
  	CSV.open(file, "w") do |writer|
  		writer << ["Nombre","Codigo"]
  		@materia.each do |m|
  			writer << [m.nombre,m.codigo]

  		end
  	end

  	@test = Inscripcion.group(:curso_id).count
  	file = "app/assets/javascripts/pruebainscripcion.csv"
  	CSV.open(file, "w") do |writer|
  		writer << ["curso","estudiantes"]
  		@test.each do |m|
  			writer << [m[0],m[1]]

  		end
  	end

  	@test = Inscripcion.group(:estudiante_id).count
  	file = "app/assets/javascripts/pruebainscripcion2.csv"
  	CSV.open(file, "w") do |writer|
  		writer << ["estudiante","cursos"]
  		@test.each do |m|
  			writer << [m[0],m[1]]

  		end
  	end

  	@test = Curso.select(:profesor_id).group(:materium_id).count
  	file = "app/assets/javascripts/pruebainscripcion3.csv"
  	CSV.open(file, "w") do |writer|
  		writer << ["materia","profesores"]
  		@test.each do |m|
  			writer << [m[0],m[1]]

  		end
  	end

  end
end
