Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#my_dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get 'dashboard', to: 'homes#my_dashboard', as: "dashboard"


  resources :homes do
    resources :rooms, only: [:new, :create]
  end

  resources :rooms, except: [:new, :create] do
    resources :chores, only: [ :index, :new, :create ]
  end

  resources :chores, only: [ :show, :edit, :update, :destroy ]

  end
