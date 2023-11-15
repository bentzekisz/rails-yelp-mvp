Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurants#index'
  # get 'new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # get 'restaurants/:id/new', to: 'reviews#new', as: :review
  # post 'reviews', to: 'reviews#create'
  # # get 'edit', to: 'tasks#edit'
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # patch 'tasks/:id', to: 'tasks#update'
  # delete 'tasks/:id', to: 'tasks#destroy'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
  resources :reviews, only: [:create]
  get "up" => "rails/health#show", as: :rails_health_check
end
  # Defines the root path route ("/")
  # root "posts#index"
end
