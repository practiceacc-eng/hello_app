Rails.application.routes.draw do
  #get 'users/new'
  resources :users
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/roll', to: 'static_pages#roll'
  get '/index', to: 'users#index'

end
