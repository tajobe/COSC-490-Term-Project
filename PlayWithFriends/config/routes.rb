Rails.application.routes.draw do
  resources :reputations
  resources :invites
  resources :servers
  root to: 'servers#index'
  devise_for :users
  resources :users

  get 'servers/:id/transfer' => 'servers#transfer', as: :transfer_server
  get 'servers/:server_id/request' => 'invites#new', as: :invite_to_server
  get 'servers/game/:game' => 'servers#index', as: :filter_game

  get 'invites/:id/respond/:response' => 'invites#respond', as: :invite_response
  get 'invites/:invite/rate' => 'reputations#new', as: :rate
end
