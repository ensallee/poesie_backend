Rails.application.routes.draw do
  resources :poems
  resources :users, only: [:index, :show, :create]
  resources :sessions, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/my-poems', to: 'users#poems'
end
