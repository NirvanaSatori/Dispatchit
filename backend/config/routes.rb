Rails.application.routes.draw do
  resources :statuses, only: [:index, :update]
  resources :parcels, only: [:index, :show, :create, :update]
  resources :users, only: [:index, :show, :create, :update]
  
  post "/log-in", to: "sessions#create"
  get "/logged-in", to: "users#logged_in"
  delete "/logout", to: "sessions#destroy"
end
