class InscripcionsController < ApplicationController
  def index
  end

  def new
  	@inscripcion = Inscripcion.new
    respond_to do |format|
      format.html
      format.json {render json: @inscripcion}
    end
  end

  def edit
    @estudiante = Estudiante.find(params[:estudiante_id])
    @inscripcion = Inscripcion.find(params[:id])
  end

  def create
  	@estudiante = Estudiante.find(params[:estudiante_id])
    @inscripcion = @estudiante.inscripcions.create!(inscripcion_params)
    @person = Person.new
    @person.nombre = @estudiante.nombres
    @person.apellido = @estudiante.apellidos
    @person.correo = @estudiante.email
    @person.cedula = @estudiante.cedula
    @person.curso_id = @inscripcion.curso_id
    @person.save
    respond_to do |format|
      if @inscripcion.save
        format.html { redirect_to estudiantes_cuenta_path, notice: 'Inscripcion exitosa'}
        format.json { render json: @inscripcion, status: :created, location: @inscripcion}
      else
        format.html { render action: "new"}
        format.json { render json: @inscripcion.errors, status: :unprocessable_entity}
      end
    end
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

 """ def destroy
       @inscripcion = Inscripcion.find(params[:id])
       @inscripcion.destroy
       redirect_to estudiantes_cuenta_path
     end"""

  def destroy
    @inscripcion = Inscripcion.find(params[:id])
    respond_to do |format|
      if @inscripcion.destroy
        format.js
        format.json {render json: @inscripcion, status: 'success', message: 'Inscripcion Eliminada'}
      else
        format.json {render json: @inscripcion.errors ,status: :unprocessable_entity}
      end
    end
  end
  
  private
    def inscripcion_params
      params.require(:inscripcion).permit(:estudiante_id, :curso_id)
    end

end
