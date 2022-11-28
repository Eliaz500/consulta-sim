Rails.application.routes.draw do
  root "home_page#index"

  resources :pacientes
  resources :medicos
end
