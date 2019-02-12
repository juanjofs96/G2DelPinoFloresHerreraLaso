class PeopleController < ApplicationController
  respond_to :json, :html
  def companeros
      @curso = Person.all
      respond_with(@curso)
      puts @curso
  end
  
  def index
    @people = Person.all
    
  end

  def inscritos
    @inscritos = Person.where(curso_id: params[:id])
  end


  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to people_path, notice: "The person has been created!" and return
    end
    render 'new'
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])

    if @person.update_attributes(person_params)
      redirect_to people_path, notice: "#{@person.nombre} #{@person.apellido} has been updated!" and return
    end

    render 'edit'
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to people_path, notice: "#{@person.nombre} #{@person.apellido} has been deleted!" and return
  end
  private
    def person_params
      params.require(:person).permit(:nombre, :apellido, :correo, :cedula, :curso_id)
    end
end
