Rails.application.routes.draw do
  resources :servers
  root to: 'servers#index'
  devise_for :users
  resources :users

  # servers routes
  get 'servers/:id/transfer' => 'servers#transfer', as: :transfer_server
  get 'servers/game/:game' => 'servers#index', as: :filter_game

  # invites routes
  get 'invites' => 'invites#index', as: :invites
  get 'invites/:id' => 'invites#show', as: :invite
  get 'servers/:server_id/request' => 'invites#new', as: :invite_to_server
  get 'invites/:id/respond/:response' => 'invites#respond', as: :invite_response
  post 'invites' => 'invites#create', as: :create_invite

  # reputation routes
  get 'reputations' => 'reputations#index', as: :reputations
  get 'reputations/:id' => 'reputations#show', as: :reputation
  get 'reputations/:id/edit' => 'reputations#edit', as: :edit_reputation
  get 'invites/:invite/rate' => 'reputations#new', as: :rate
  post 'reputations' => 'reputations#create', as: :create_reputation
  patch 'reputations/:id' => 'reputations#update', as: :update_reputation
end
