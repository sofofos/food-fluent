Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'dashboard', to: 'pages#dashboard'
  resources :diet_profiles, only: %I[new create]
  resources :users, only: %i[index]
  resources :friends, only: %i[index create] do
     member do
        post :accept
        post :decline
      end
    end

  resources :restaurants, only: %i[index show]
  resources :dishes, only: [:create]
end
