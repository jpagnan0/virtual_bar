Rails.application.routes.draw do
  get 'drinks/index'
  get 'drinks/new'
  get 'drinks/show'
  resources :drinks
  resources :users

  get '/', to:"users#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
