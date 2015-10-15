Rails.application.routes.draw do
  devise_for :users

  get 'users/dashboard', to: 'users#dashboard', as: 'dashboard'
  delete 'users/destroy', to: 'users#destroy', as: 'delete_account'
  
  resources :financials
  
  root 'users#index', as: 'home'

end
