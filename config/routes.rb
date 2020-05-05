Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
  get 'commu/menu'
  get 'commu/search_form'
  get 'commu/search'
  resources :users, only: %i(index show)

  resources :commu, only: %i(new create index show)

  
end
