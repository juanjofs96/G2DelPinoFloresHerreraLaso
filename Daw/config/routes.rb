Rails.application.routes.draw do
  get 'people/index'

  get 'people/new'

  get 'people/create'

  get 'people/edit'

  get 'people/update'

  get 'people/destroy'

  get 'people/inscritos'


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

  get 'estudiantes/testaso'
  
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

  resources :grafico1, only: [:index]
  resources :grafico2, only: [:index]
  resources :grafico3, only: [:index]

  resources :pagos do
    resources :facturas, shallow: true #shalow nesting
  end

  resources :estudiantes do
    resources :facturas
    resources :calificacions, shallow: true
    resources :inscripcions
  end

  resources :cursos do
    collection do
      get 'todos'
    end 
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


  resources :people, except: [:show] do
    collection do
      get 'companeros'
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
