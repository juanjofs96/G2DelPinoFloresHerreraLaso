Rails.application.routes.draw do
  devise_for :admins #, path: 'admin', skip: :registrations
  devise_for :estudiantes

  get 'contactenos/index'
  post 'contactenos/create'

  get 'noticias/index'

  get 'inscripciones/index'

  get 'contactenos/index'

  get 'preguntas/index'

  get 'calendario/index'

  get 'nosotros/index'

  get 'principal/index'

  get 'estudiantes/cuenta'

  get 'estudiantes/vistaNotas'

  get 'admins/dashboard'

  get 'estudiantes/delete'

  root 'principal#index'

  get 'estudiantes/:id/edit', to: 'estudiantes#edit', as: :edit_article

  patch 'estudiantes/:id', to: 'estudiantes#update'

  #formulario de prueba para envio de correo
  get 'send/index'
  post 'send/create'

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
  
  resources :articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
