Rails.application.routes.draw do
  resources :services do
    resources :status_checks
  end
  root to: "dashboard#index"
end
