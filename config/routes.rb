Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post 'login', to: 'sessions#create'
    end
  end
end
