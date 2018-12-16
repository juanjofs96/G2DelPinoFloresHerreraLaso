Rails.application.routes.draw do
  get 'noticias/index'

  get 'inscripciones/index'

  get 'contactenos/index'

  get 'preguntas/index'

  get 'calendario/index'

  get 'nosotros/index'

  get 'principal/index'
  root 'principal#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
