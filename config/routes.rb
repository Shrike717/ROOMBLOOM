Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :moodboards, only: [:index, :show, :create, :update, :destroy] do
    resources :pins
    get "shuffle", to: "moodboards#shuffle", as: "shuffle" # A route was made to hit the custom shuffle method on moodboards controller.
  end

  resources :pins, only: [ :destroy, :update ]
end
