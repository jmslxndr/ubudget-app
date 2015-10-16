Rails.application.routes.draw do
  devise_for :users

  get 'users/dashboard', to: 'users#dashboard', as: 'dashboard'
  delete 'users/destroy', to: 'users#destroy', as: 'delete_account'
  get 'users/terms', to: 'users#terms', as: 'terms'
  get 'users/privacy', to: 'users#privacy', as: 'privacy'

  resources :financials
  
  root 'users#index', as: 'home'

end
