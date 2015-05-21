Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show] do
    resources :items, only: [:create, :destroy]
  end

  resources :todos, only: [:new, :create, :show]



  authenticated :user do
    root :to => "users#show", :as => "authenticaed_root"
  end

  root :to => "users#index"


end
