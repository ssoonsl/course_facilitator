Rails.application.routes.draw do
  devise_for :instructors

  resources :batches, only: [:index] do
    member do
      # resources :daily, only: [:create, :destroy]
      # resources :completed_outcome, only: [:create, :destroy]
    end
  end

  get 'plan_week', to: 'pages#weekly'

  root to: 'batches#index'

end
