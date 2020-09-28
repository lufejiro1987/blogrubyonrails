Rails.application.routes.draw do
  resources :posts
  get 'users/sign_up', to: 'users#new'
  post 'users', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'
end