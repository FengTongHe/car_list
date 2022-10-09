Rails.application.routes.draw do
  root "manufactures#index"

  get "/manufactures", to: "manufactures#index"
  get "/manufactures/:id", to: "manufactures#show", as: "manufacture", constraints: { id: /\d+/ }

  get "years/index", to: "years#index"
  get "years/show", to: "years#show", as: "year", constraints: { id: /\d+/ }
end
