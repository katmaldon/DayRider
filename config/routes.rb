Rails.application.routes.draw do
  resources :renters
  resources :shops, only: [:index, :show]
  resources :rentals
  resources :bikes
  resources :users

  root :to => "bikes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
