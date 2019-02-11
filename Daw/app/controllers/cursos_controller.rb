class CursosController < ApplicationController
    respond_to :json, :html
    def todos
        @curso = Curso.all
        respond_with(@curso)
        puts @curso
    end
end
