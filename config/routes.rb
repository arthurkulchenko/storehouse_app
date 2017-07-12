Rails.application.routes.draw do
  devise_for :users
  root 'facilities#index'
  resources :facilities
end
