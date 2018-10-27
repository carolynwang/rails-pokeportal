Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers

  patch 'pokemon/capture', to: 'pokemon#capture', as: 'capture'
  patch 'pokemon/damage', to: 'pokemon#damage', as: 'damage'
  get 'pokemon/new', to: 'pokemon#new', as: 'new'
  post 'pokemon/create', to: 'pokemon#create', as: 'create'
end
