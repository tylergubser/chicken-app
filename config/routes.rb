Rails.application.routes.draw do
  resources :users

  get '/', to: 'sessions#new', as: 'root'
  
end
