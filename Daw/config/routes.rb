Rails.application.routes.draw do
  get 'noticias/index'

  get 'inscripciones/index'

  get 'contactenos/index'

  get 'preguntas/index'

  get 'calendario/index'

  get 'nosotros/index'

  get 'principal/index'
  root 'principal#index'

  resources :pagos do
    resources :facturas, shallow: true #shalow nesting
  end

  resources :estudiantes do
    resources :facturas
    resources :calificacions, shallow: true
    resources :inscripcions, shallow: true
  end

  resources :cursos do
    resources :inscripcions
    resources :calificacions
  end

  resources :materia do
    resources :cursos
  end

  resources :profesors do
    resources :cursos
  end
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
