Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :users, only: [:new, :show, :destroy, :create]
  resources :items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
