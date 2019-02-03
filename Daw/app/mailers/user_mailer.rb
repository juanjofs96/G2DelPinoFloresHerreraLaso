class UserMailer < ApplicationMailer
	default from: 'juanjofs96@gmail.com'
	
	def contact_send(params) 
		@parameters=params 
		mail(to:'juanjo4753@hotmail.com',subject:'Informacion Academia Politecnica de Nivelacion') 
	end
end
