Rails.application.routes.draw do
  devise_for :users
  root to: "words#index"
  resources :words do
  end 
  
end