Rails.application.routes.draw do
<<<<<<< HEAD
  root to: 'pages#home'

   devise_for :users

   resources :users, only: [:show]
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html		    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :categories, only: [:show]

=======
  root to: 'pages#home' 

  devise_for :users

  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories, only: [:show]
>>>>>>> 54e607330d6148a0598d271920eceb560d79ba1d
end
