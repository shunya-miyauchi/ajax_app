Rails.application.routes.draw do
  resources :blogs do
    resources :comments
  end
  resources :users, only: [:new,:create,:show]
  resources :sessions, only: [:new,:create,:destroy]
end
