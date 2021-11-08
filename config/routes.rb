Rails.application.routes.draw do
  resources :usuarios
  root 'welcome#index'
  resources :menu_principal, only: [:index] do
    collection do
      get:jogo
    end
  end
  #resources :jogo, only: [:index]
end
