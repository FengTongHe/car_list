Rails.application.routes.draw do
  get 'manufactures/index'
  get 'manufactures/show'
  root "manufactures#index"

  get "/manufactures", to: "manufactures#index"
end
