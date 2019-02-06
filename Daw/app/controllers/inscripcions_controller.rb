class InscripcionsController < ApplicationController
  def index
  end

  def new
  	@inscripcion = Inscripcion.new
  end

  def edit
	@estudiante = Estudiante.find(params[:estudiante_id])
	@inscripcion = Inscripcion.find(params[:id])
  end

  def create
  	@estudiante = Estudiante.find(params[:estudiante_id])
  	@inscripcion = @estudiante.inscripcions.create!(inscripcion_params)
  	@inscripcion.save
  	redirect_to estudiantes_cuenta_path
  end

  def update
	@estudiante = Estudiante.find(params[:estudiante_id])
	@inscripcion = Inscripcion.find(params[:id])
	respond_to do |format|
		if @inscripcion.update_attributes(inscripcion_params)
			format.html { redirect_to estudiantes_cuenta_path, notice: 'Top was successfully updated.' }
			format.json { head :no_content}
		else
			format.html { render action 'edit' }
			format.json { render json: @inscripcion.errors, status: :unprocessable_entity}
		end
	end

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
