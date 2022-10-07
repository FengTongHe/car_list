Rails.application.routes.draw do
  root "manufactures#index"

  get "/manufactures", to: "manufactures#index"
end
