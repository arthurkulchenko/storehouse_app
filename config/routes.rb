Rails.application.routes.draw do
  devise_for :users
  root 'facilities#index'
  resources :facilities, shallow: true, except: [:new, :edit] do
    resources :storage_house, only: [:show, :update]
    resource :storage_application, only: [:create]
    resource :inventarization, only: [:create]
  end
  resources :storehouse_applications, only: [:index, :update]
end
