Rails.application.routes.draw do
  root "manufactures#index"

  get "/manufactures/index"
  get "/manufactures/show"

  get "years/index"
  get "years/show"

  get "models/index"
  get "models/show"

  get "about/index"
  resources :manufactures, only: %i[index show]
  resources :years, only: %i[index show]
  resources :about, only: %i[index]

  resources :models, only: %i[index show] do
    collection do
      get "search"
    end
  end
end
