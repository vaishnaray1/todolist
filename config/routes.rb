Rails.application.routes.draw do

  root to: "items#index" 

  resources :categories
  resources :interactions
  resources :items
  devise_for :users

  get ":username" => "users#show", as: :user

  delete ":item/completed" => "items#notcompleted", as: :deletecompleted

  get ":item/completed" => "items#completed", as: :getcompleted
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
