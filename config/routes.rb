Rails.application.routes.draw do
  devise_for :users
  root 'facilities#index'
  resources :facilities, except: [:new, :edit]
  # TODO 2 controllers for adding applications and page to show all applications
  resources :storehouse_applications, only: [:index, :create, :update]
  resource :monthly_application, only: [:index] # OPTIMIZE
  # resources :storage_operations, only: [:create, :update]
  # TODO add controller inventarization
end
