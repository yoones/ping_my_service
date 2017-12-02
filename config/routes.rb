require 'sidekiq/web'

Rails.application.routes.draw do
  resources :services do
    resources :status_checks
  end

  mount Sidekiq::Web => '/sidekiq'

  root to: "dashboard#index"
end
