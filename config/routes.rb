Rails.application.routes.draw do
  resources :partida
  resources :usuarios
  resources :menu_principal, only: [:index] do
    collection do
      get :partida
    end
  end
  #resources :jogo, only: [:index]
  resources :login
  get '/login/is_user' => 'login#is_user'
  root 'login#new'
end
