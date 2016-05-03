Rails.application.routes.draw do
  root 'products#search'

  resources :pages, only: 'show'

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
