Rails.application.routes.draw do
  resources :ranking
  resources :usuarios
  resources :menu_principal
  resources :partida, only: [:index] do
    collection do
      get :resultado
      post :resultado
    end
  end
  resources :login
  get '/login/is_user' => 'login#is_user'
  post '/login/create' => 'login#create'
  root 'login#index'
end
