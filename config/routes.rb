Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :courses do
    resources :favorites, only: [:new, :create]
  end
  resources :favorites, only: [:index, :destroy]

  resources :bookings
  namespace :teacher do
    resources :courses, only: [:index]
  end
  get 'avatars', to: 'avatars#edit'
  patch 'avatars', to: 'avatars#update'

  # Defines the root path route ("/")
  # root "posts#index"
end
