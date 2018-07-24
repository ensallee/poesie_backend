Rails.application.routes.draw do
  resources :likes
  resources :poems
  resources :users, only: [:index, :show, :create]
  resources :sessions, only: [:create]
  resources :relationships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users/:id/poems', to: 'users#poems'
end
