Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  get 'items/index', to: 'items#index'
  resources :users, only: [:show, :destroy] do
    resources :items, only: [:new, :create] do
      resources :item_images, only: [:new, :create]
    end
    get 'logout', to: 'users#logout'
  end
end
