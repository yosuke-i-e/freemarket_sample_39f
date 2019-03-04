Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :items, only: :index
  resources :users, only: [:show, :destroy, :edit, :update] do
    get 'logout', to: 'users#logout'
  end
end
