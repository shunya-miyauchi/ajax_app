Rails.application.routes.draw do
  resources :blogs do
    resources :comments
  end
  resources :users, only: [:index,:new,:create,:show]
  resources :sessions, only: [:new,:create,:destroy]
  resources :relationships, only: [:create, :destroy]
end
