Rails.application.routes.draw do
  devise_for :users
  root 'facilities#index'
  resources :facilities
  resources :storehouse_applications, only: [:index, :create, :destroy]
end
