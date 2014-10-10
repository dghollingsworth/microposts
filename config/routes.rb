Microposts::Application.routes.draw do
  get "microposts/create"
  get "microposts/destroy"
  root "static_pages#home"

  resources :users do 
    member do 
      get :following, :followers
    end
  end

  resources :microposts, only: [:create, :destroy]

  resources :relationships, only: [:create, :destroy]

  resources :sessions, only: [:new, :create, :destroy]
  match "/signup", to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

  #Static Pages
  match '/help', to: 'static_pages#help', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

end
