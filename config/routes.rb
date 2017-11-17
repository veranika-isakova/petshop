Rails.application.routes.draw do

  root to: 'categories#index'

  resources :categories
  resources :pets
  resources :shopping_carts

  devise_for :users

  resources :users, only: [:show]
  resources :profiles, only: [:new, :edit, :create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
