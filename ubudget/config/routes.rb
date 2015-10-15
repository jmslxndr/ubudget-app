Rails.application.routes.draw do
  devise_for :users

  get 'users/dashboard', to: 'users#dashboard', as: 'dashboard'
  
  resources :financials
  
  root 'users#index', as: 'home'

end
