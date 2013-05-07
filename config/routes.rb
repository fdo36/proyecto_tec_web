Proyecto::Application.routes.draw do
  resources :camaras

  match "admin/camaras", to: "camaras#index"
  resources :identities
  root to: "sessions#new"
  match "/auth/:provider/callback", to: "sessions#create"
  match "/auth/failure", to: "sessions#failure"
  match "/logout", to: "sessions#destroy", :as => "logout"

end
