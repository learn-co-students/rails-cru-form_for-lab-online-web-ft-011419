Rails.application.routes.draw do
  resources :songs, only: [:index, :new, :show, :create, :update, :edit]
  resources :genres, only: [:index, :new, :show, :create, :update, :edit]
  resources :artists, only: [:index, :new, :show, :create, :update, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
