class ArticlesController < ApplicationController
    require 'json'
    before_action :authenticate_admin!
    
    def new
    end

    def create
        archivo = File.read('public/noticias.json')
        noticiasHash = JSON.parse(archivo)
        
        @article = Article.new(article_params)
        nuevaNoticia = 
        {
            "titulo" => @article.titulo,
            "descripcion" => @article.texto
        }
        puts nuevaNoticia
        puts noticiasHash
        noticiasHash.unshift(nuevaNoticia)
        puts noticiasHash
        File.open("public/noticias.json","w") do |f|
            f.write(noticiasHash.to_json)
        end
        redirect_to admins_dashboard_path

    end

    private
    def article_params
        params.require(:article).permit(:titulo, :texto)
    end

end
