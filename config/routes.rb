Microposts::Application.routes.draw do
  root "static_pages#home"

  match '/help', to: 'static_pages#help', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  
  get "/signup", to: 'users#new'

  #resources :users
  
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user'
  post '/users', to: 'users#create'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

end
