Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get 'dashboard', to: 'dashboards#my_dashboard', as: "dashboard"

  resources :homes

  resources :rooms do
    resources :chores, only: [ :index, :new, :create ]
  end
  resources :chores, only: [ :show, :edit, :update, :destroy ]

  end
