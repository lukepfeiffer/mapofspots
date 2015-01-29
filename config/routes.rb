Rails.application.routes.draw do
  resources :spots
  resources :users
  root 'spots#index'

  get '/sign_in', to: 'pages#sign_in'
  get '/sign_out', to: 'sessions#sign_out'
end
