Rails.application.routes.draw do
  resources :authors, only: [:index, :new, :create, :update]
  resources :posts, only: [:index, :new, :create, :update]
end
