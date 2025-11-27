Rails.application.routes.draw do
  get "dashboard/index"
  resources :gastos
  resources :receita

  root "dashboard#index"

  get "up" => "rails/health#show", as: :rails_health_check

  get "dashboard", to: "dashboard#index"

end
