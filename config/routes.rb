Rails.application.routes.draw do
  resources :usuarios
  resources :login
  get '/login/is_user' => 'login#is_user'
  root 'login#new'
end
