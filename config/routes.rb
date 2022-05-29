Rails.application.routes.draw do

  root to: "items#index" 

  resources :categories
  resources :interactions
  resources :items
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  

  get ":username" => "users#show", as: :user


end
