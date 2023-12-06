Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  get "cart", to: "cart#show"
  post "cart/add"
  post "cart/remove"
  resources :products

  root "products#index"
end
