Rails.application.routes.draw do
  # get "manufactures/index"
  # get "manufactures/show"
  root "manufactures#index"

  get "/manufactures", to: "manufactures#index"
  get "/manufactures/:id", to: "manufactures#show", as: "manufacture", constraints: { id: /\d+/ }
end
