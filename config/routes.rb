Rails.application.routes.draw do
  resources :room_rentals
  root to: 'home#index'
  
  devise_for :users
end
