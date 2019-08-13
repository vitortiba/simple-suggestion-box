Rails.application.routes.draw do
  resources :suggestions, only: [:index, :new, :create, :destroy]
  root 'suggestions#index'
end
