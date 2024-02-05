Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "produtos#index"
  #get 'produtos', to: "produtos#index"
  #get 'produtos/new', to: "produtos#new" 

  #post 'produtos', to: "produtos#create"

  #get 'produtos/:id', to: "produtos#show"

  #o helper resources trás todas as rotas para os métodos existentes em controller produtos
  resources :produtos
end
