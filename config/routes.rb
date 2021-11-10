Rails.application.routes.draw do
  resources :usuarios
  resources :menu_principal, only: [:index] do
    collection do
      get:jogo
    end
  end
  #resources :jogo, only: [:index]
  resources :login
  get '/login/is_user' => 'login#is_user'
  root 'login#new'
  resources :perguntas
  
end
