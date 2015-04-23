Rails.application.routes.draw do
  resources :servers
  root to: 'servers#index'
  devise_for :users
  resources :users

  get 'servers/:id/transfer' => 'servers#transfer', as: :transfer_server
end
