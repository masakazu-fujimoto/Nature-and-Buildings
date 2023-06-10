Rails.application.routes.draw do
  root to: 'photos#index'
  resources :tweets, only: [:index, :new]
end
