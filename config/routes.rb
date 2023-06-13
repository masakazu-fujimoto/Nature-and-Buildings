Rails.application.routes.draw do
  devise_for :users
  root to: 'photos#index'
  resource :searches
  resources :photos do
    resources :comments, only: :create
  end
end
