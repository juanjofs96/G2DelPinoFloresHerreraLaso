class SendController < ApplicationController
  def index
  end

  def create 
  	@params= params
    UserMailer.contact_send(params).deliver
 	flash[:notice]= "formulario enviado"
 	redirect_to '/send/index'
  end
end
