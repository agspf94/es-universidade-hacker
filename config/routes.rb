Rails.application.routes.draw do
  resources :usuarios
  resources :menu_principal
  resources :partida, only: [:index] do
    collection do
      get :resultado
    end
  end
  #resources :jogo, only: [:index]
  resources :login
  get '/login/is_user' => 'login#is_user'
  root 'login#new'
end
