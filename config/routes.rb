Rails.application.routes.draw do
  root "home_page#index"

  resources :pacientes do
    resources :enderecos
  end
  resources :medicos
end
