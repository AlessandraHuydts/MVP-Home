Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:edit, :update, :show] do
    member do
      post "/matching", to: "users#matching"
    end
  end
end
