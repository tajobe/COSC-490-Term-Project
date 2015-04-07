Rails.application.routes.draw do
  resources :servers
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
