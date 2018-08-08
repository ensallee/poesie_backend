Rails.application.routes.draw do
  resources :likes, only: [:create]
  resources :poems, only: [:index, :create, :destroy]
  resources :users, only: [:index, :show, :update, :create]
  resources :sessions, only: [:create]
  resources :relationships, only: [:create]
  resources :images, only: [:index, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users/:id/poems', to: 'users#poems'
  delete '/relationships', to: 'relationships#destroy_relationship'
end

 # except: [:destroy]
