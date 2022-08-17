Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    resources :restaurants
  end
  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new]
  end
end
