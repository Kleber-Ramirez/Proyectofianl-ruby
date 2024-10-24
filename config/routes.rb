Rails.application.routes.draw do
  resources :direccions
  resources :comentarios
  resources :categoria
  resources :pedidos
  resources :productos
  resources :usuarios

  # Definir la ruta raíz para el Dashboard
  root "dashboard#index"

  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
