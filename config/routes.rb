Rails.application.routes.draw do
  resources :questions
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "home/index"

  authenticate :user do
    mount Avo::Engine, at: Avo.configuration.root_path
  end
end
