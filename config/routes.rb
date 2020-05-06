Rails.application.routes.draw do
  resources :landings, only: :show
  resources :shops, only: [:index, :show]
  resources :renters, only: [:index, :show, :new, :create]
  resources :rentals, except: [:index]
  resources :owners, only: [:show]
  resources :rentals
  resources :owners, only: [:show, :index]
  resources :shops
  get "/bikes/availability", to: "bikes#availability", as: "availability"
  resources :bikes

  root :to => "landings#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
