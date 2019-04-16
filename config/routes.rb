Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  authenticated :user do
    root 'users#index', as: :authenticated_root
  end

  root to: 'pages#home'


  resources :users, only: [:index]

  resources :families, only: [:new, :create] do
    resources :missions, only: [:index, :new, :create]
    resources :rewards, only: [:index, :new, :create]
    resources :children, only: [:index, :new, :create]

  end
  resources :families, only: [:index, :show]
  resources :children, only: [:show]
  resources :missions, only: [:show, :edit, :update, :destroy]
  resources :rewards, only: [:show, :edit, :update, :destroy]
  resources :partnairs, only: [:index, :show, :edit, :update, :destroy, :new, :create]

end

