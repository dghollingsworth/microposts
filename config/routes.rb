Microposts::Application.routes.draw do
  root "static_pages#home"
  get "users/new"

  match '/help', to: 'static_pages#help', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  
  get "/signup", to: 'users#new'
  
  # get '/help', to: 'static_pages#help', as: "help"
  # get '/about', to: 'static_pages#about', as: 'about'
  # get '/contact', to: 'static_pages#contact', as: 'contact'


end
