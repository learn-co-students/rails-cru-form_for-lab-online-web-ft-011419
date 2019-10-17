Rails.application.routes.draw do

  resources :artists, only: [:new, :create, :edit, :update, :show]
  resources :songs, only: [:new, :create, :edit, :update, :show, :index]
  resources :genres, only: [:new, :create, :edit, :update, :show]

end
