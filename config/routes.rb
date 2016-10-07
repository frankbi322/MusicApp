Rails.application.routes.draw do


  resources :users, only: [:new, :create, :show]

  resource :session, only: [:new, :create, :destroy]

  resources :bands, only: [:index, :create, :new, :edit, :show, :update, :destroy]

  resources :tracks, only: [:new, :create, :edit, :show, :update, :destroy]

  resources :albums, only: [:new, :create, :edit, :show, :update, :destroy]

end
