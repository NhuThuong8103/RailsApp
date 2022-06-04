require 'sidekiq/web'
Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  root to: 'users#index'

  resources :users, only: [:create]
end
