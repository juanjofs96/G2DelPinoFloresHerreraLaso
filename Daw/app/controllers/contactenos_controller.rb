class ContactenosController < ApplicationController
  def index
  end

  def create 
  	@params= params
    UserMailer.contact_send(params).deliver
 	flash[:notice]= "formulario enviado"
 	redirect_to '/contactenos/index'
  end
end
