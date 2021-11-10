Rails.application.routes.draw do
  resources :usuarios
  resources :menu_principal
  resources :partida, only: [:index] do
    collection do
      get :resultado
      post :resultado
    end
  end
  #post "/menu_principal" => "menu_principal#index"
  #resources :jogo, only: [:index]

  resources :login
  get '/login/is_user' => 'login#is_user'
  post '/login/create' => 'login#create'
  root 'login#new'
end
