Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "cocktails#index"

# get "cocktails/:id", to: 'cocktails#show', as: :show

# get "cocktails/new", to: 'cocktails#new', as: :new

# post "cocktails/:id", to: 'cocktails#create', as: :create

  resources :cocktails, only: [:show, :new, :create] do
    resources :doses, only: [ :new, :create]
  end

  resources :doses, only: [ :destroy ]
end
