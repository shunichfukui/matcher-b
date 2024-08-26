Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#login'
      post '/register', to: 'auth#register'
      get '/current_user', to: 'users#current'
    end
  end

  namespace :admin do
    namespace :api do
      namespace :v1 do
        get '/check_admin', to: 'admin#check_admin'
      end
    end
  end
end
