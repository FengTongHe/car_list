Rails.application.routes.draw do
  root "manufactures#index"

  get "/manufactures/index"
  get "/manufactures/show"
  resources :manufactures, only: %i[index show]

  get "years/index"
  get "years/show"
  resources :years, only: %i[index show]

  get "models/index"
  get "models/show"
  resources :models, only: %i[index show]
end
