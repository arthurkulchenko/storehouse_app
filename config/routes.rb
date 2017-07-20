Rails.application.routes.draw do
  devise_for :users
  root 'facilities#index'
  resources :facilities, except: [:new, :edit]
  resources :storehouse_applications, only: [:index, :create, :update]
  resource :monthly_application, only: [:index] # OPTIMIZE
  # resources :storage_operations, only: [:create, :update]
end
