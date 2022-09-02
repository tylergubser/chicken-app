Rails.application.routes.draw do
  resources :users

  get '/', to: 'sessions#new', as: 'root'

  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
end
