Rails.application.routes.draw do
  devise_for :instructors

  namespace :admin do
    resources :batches, only: [:index] do
      member do
        # resources :daily, only: [:create, :destroy]
        # resources :completed_outcome, only: [:create, :destroy]
      end
    end

    get 'plan_week', to: 'pages#weekly'
  end

  root to: 'admin/batches#index'

end
