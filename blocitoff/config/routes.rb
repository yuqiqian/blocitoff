Rails.application.routes.draw do

  resources :users, only: [:show] do
    resources :items, only: [:create, :destroy]
  end

  devise_for :users

  authenticated :user do
    root :to => "users#show", :as => "authenticaed_root"
  end

  root :to => "users#index"


end
