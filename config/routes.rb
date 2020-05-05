Rails.application.routes.draw do
  resources :renters, only: [:index, :show]
  resources :rentals
  resources :owners, only: [:show]
  resources :shops
  resources :bikes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
