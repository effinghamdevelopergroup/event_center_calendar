Rails.application.routes.draw do
<<<<<<< Updated upstream
=======
  resources :rooms
  resources :room_rentals
>>>>>>> Stashed changes
  root to: 'home#index'
  
  devise_for :users
end
