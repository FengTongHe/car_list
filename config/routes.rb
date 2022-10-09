Rails.application.routes.draw do
  get 'models/index'
  get 'models/show'
  root "manufactures#index"

  get "/manufactures", to: "manufactures#index"
  get "/manufactures/:id", to: "manufactures#show", as: "manufacture", constraints: { id: /\d+/ }

  get "years/index"
  get "years/show"

  resources :years, only: %i[index show]
end
