class CalendarioController < ApplicationController
  def index
  	@materia = Materium.all
  	header = "Nombre materia,Codigo materia"
  	file = "app/assets/javascripts/pruebamateria.csv"
  	CSV.open(file, "w") do |writer|
  		writer << ["Nombre","Codigo"]
  		@materia.each do |m|
  			writer << [m.nombre,m.codigo]

  		end
  	end
  end
end
