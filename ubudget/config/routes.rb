Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  get 'users/dashboard', to: 'users#dashboard', as: 'dashboard'
  resources :financials
  root 'users#index'

end
