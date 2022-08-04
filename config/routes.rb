Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "splash_screen#index"
  resources :categories do
    resources :entities
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
