Rails.application.routes.draw do
  devise_for :children
  devise_for :users
  root to: 'pages#home'


  resources :users, only: [:index] do
    resources :family, only: [:new, :create]
  end

  resources :families, only: [:new, :create] do
    resources :missions, only: [:index, :new, :create]
    resources :rewards, only: [:index, :new, :create]
    resources :children, only: [:index, :show, :new, :create]
  end

  resources :missions, only: [:show, :edit, :update, :destroy]
  resources :rewards, only: [:show, :edit, :update, :destroy]

  resources :rewards, only: [:index, :new, :create] do
    resources :partnairs, only: [:index, :show]
  end
end

