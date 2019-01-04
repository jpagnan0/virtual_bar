Rails.application.routes.draw do
  resources :users  #, only: [:show, :new, :create, :destroy]
  resources :drinks #, only: [:index, :show]
  resources :sessions, only: [:new, :create, :destroy]
  root to: 'static#home'

  get '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  patch '/tab', to: "tab#update", as: :add_drink_to_tab

  # resources :users
  # resources :sessions, only: [:new, :create, :destroy]
  # root to: 'static_pages#home'
  # match '/signup',  to: 'users#new',            via: 'get'
  # match '/signin',  to: 'sessions#new',         via: 'get'
  # match '/signout', to: 'sessions#destroy',     via: 'delete'
  # match '/help',    to: 'static_pages#help',    via: 'get'
  # match '/about',   to: 'static_pages#about',   via: 'get'
  # match '/contact', to: 'static_pages#contact', via: 'get'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
