Rails.application.routes.draw do
  resources :rooms
  root to: 'home#index'
  
  devise_for :users
end
