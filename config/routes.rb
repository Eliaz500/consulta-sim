Rails.application.routes.draw do
  root "home_page#index"

  get "/home_page", to: "home_page#index"
end
