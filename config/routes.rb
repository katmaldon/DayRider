Rails.application.routes.draw do
  resources :shops
  resources :rentals
  resources :bikes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
