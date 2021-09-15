Rails.application.routes.draw do
  resources :notifications
  resources :trades
  # resources :trades

  get '/food_listings', to: "food_listings#index"
  get '/food_listings/new', to: "food_listings#new"
  post '/food_listings', to: "food_listings#create"
  get '/food_listings/:id', to: "food_listings#show"
  get '/food_listings/:id/edit', to: "food_listings#edit"
  patch '/food_listings/:id', to: "food_listings#update"
  delete '/food_listings/:id', to: "food_listings#destroy"

  resources :users

  get '/trades', to: "trades#index"
  get '/trades/new', to: "trades#new"
  post '/trades', to: "trades#create"
  get '/trades/:id', to: "trades#show"
  get '/trades/:id/edit', to: "trades#edit"
  patch '/trades/:id', to: "trades#update"
  delete '/trades/:id', to: "trades#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
