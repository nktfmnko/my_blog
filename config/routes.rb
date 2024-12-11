Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"
<<<<<<< HEAD
  resources :users,  only: %i[new create]
  resources :posts
  resource :session, only: %i[new create destroy]
  
=======
  resources :users
  resources :posts
  resource :session, only: %i[new create destroy]
>>>>>>> a1f3d3955d6d8ae11de5f6bee6cfea22b0c18ec7
end
