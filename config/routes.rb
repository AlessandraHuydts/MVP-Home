Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:edit, :update, :show] do
     member do
        post "/matching", to: "users#matching"
      end
  end

  # routes for user registration
  get 'registration/cuisines', to: 'registration#cuisines_show'
  post 'registration/cuisines/edit', to: 'registration#cuisines_edit'
  get 'registration/interests', to: 'registration#interests_show'
  post 'registration/interests/edit', to: 'registration#interests_edit'
  get 'registration/bio', to: 'registration#bio_show'
  post 'registration/bio/edit', to: 'registration#bio_edit'
end
