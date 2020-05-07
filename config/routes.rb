Rails.application.routes.draw do
  resources :landings, only: :show
  resources :shops, only: [:index, :show]
  resources :renters, only: [:index, :show, :new, :create]
  resources :rentals, except: [:new]
  resources :owners, only: [:show, :index]
  resources :shops
  get "/bikes/availability", to: "bikes#availability", as: "availability"
  resources :bikes, except: [:new, :create]
  
  delete 'sessions/logout', to: "sessions#destroy", as: "logout"
  get 'sessions/login', to: "sessions#new", as: "new_login"
  
  post 'sessions/login', to: "sessions#create"
  root :to => "landings#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
