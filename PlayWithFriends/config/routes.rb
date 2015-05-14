Rails.application.routes.draw do
  resources :invites
  resources :servers
  root to: 'servers#index'
  devise_for :users
  resources :users

  get 'servers/:id/transfer' => 'servers#transfer', as: :transfer_server
  get 'servers/:server_id/request' => 'invites#new', as: :invite_to_server
end
