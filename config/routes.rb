Rails.application.routes.draw do
  root 'products#search'
  post 'products/new_order'

  resources :pages, only: 'show'

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
