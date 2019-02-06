class InscripcionsController < ApplicationController
  def index
  end

  def new
  	@inscripcion = Inscripcion.new
  end

  def create
  	@estudiante = Estudiante.find(params[:estudiante_id])
  	@inscripcion = @estudiante.inscripcions.create!(inscripcion_params)
  	@inscripcion.save
  	redirect_to estudiantes_cuenta_path
  end

  def destroy
    #@estudiante = Estudiante.find(params[:estudiante_id])
    #@inscripcion = @estudiante.inscripcions.find(params[:id])
    @inscripcion = Inscripcion.find(params[:id])
    @inscripcion.destroy
    redirect_to estudiantes_cuenta_path
  end

  private
  def inscripcion_params
    params.require(:inscripcion).permit(:estudiante_id, :curso_id)
  end

end
