Rails.application.routes.draw do
  resources :shops, only: [:index, :show]
  resources :renters, only: [:index, :show, :new, :create]
  resources :rentals, except: [:index]
  resources :owners, only: [:show] 
  resources :shops
  get "/bikes/availability", to: "bikes#availability", as: "availability"
  resources :bikes
  
  root :to => "bikes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
