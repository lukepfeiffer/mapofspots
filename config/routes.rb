Rails.application.routes.draw do
  resources :spots
  resources :users
  root 'spots#index'
end
