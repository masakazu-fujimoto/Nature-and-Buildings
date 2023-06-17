Rails.application.routes.draw do
  devise_for :users
  root to: 'photos#index'
  resources :photos do
    resources :comments, only: :create
    resources :photos do
      collection do
        get 'search'
      end
    end
  end
  resources :users, only: :show
end
