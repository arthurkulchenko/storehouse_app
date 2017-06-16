Rails.application.routes.draw do
  # devise_for :users
  root 'facility#index'
  resources :facilities
end
