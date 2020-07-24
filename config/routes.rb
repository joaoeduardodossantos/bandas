Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    # resources :produtos, only: [:new, :create, :destroy]
    #get "bandas", to: "bandas#index"
    get "bandas/new", to: "bandas#new"
    #get "bandas/edit", to: "bandas/edit"
    post "bandas", to: "bandas#create"
    #get "bandas/:id/remove", to: "bandas#destroy"
    #delete "bandas/:id", to: "bandas#destroy", as: :banda
    resources :bandas, only: [:new, :create, :destroy, :edit, :update, :patch]
    get "bandas/busca", to: "bandas#busca", as: :busca_banda
    root "bandas#index"
end
