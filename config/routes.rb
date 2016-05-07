Rails.application.routes.draw do
  root 'products#index'
  get 'products/search'
  post 'products/new_order'
  post 'products/render_order_modal'

  resources :pages, only: 'show'

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
