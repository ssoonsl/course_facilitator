Rails.application.routes.draw do

  devise_for :admins
  namespace :plan do
    resources :weeks, only: [:index, :show] do
      member do
        resources :daily, only: [:edit, :update]
        # resources :completed_outcome, only: [:create, :destroy]
      end
    end
  end

  root to: 'plan/weeks#index'

end
