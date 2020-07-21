Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    # resources :produtos, only: [:new, :create, :destroy]
    get "bandas/busca", to: "bandas#busca", as: :busca_banda
    get "bandas", to: "bandas#index"
    get "bandas/new", to: "bandas#new"
    post "bandas", to: "bandas#create"
    get "bandas/:id/remove", to: "bandas#destroy"
    delete "bandas/:id", to: "bandas#destroy", as: :banda
    root "bandas#index"
end
