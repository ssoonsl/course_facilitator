Rails.application.routes.draw do

  root to: 'plan/batches#index'

  namespace :plan do
    get 'batch_dashboard/:id', to: 'batches#dashboard', as: 'batch_dashboard'

    resources :batches, except: [:show] do
      post 'dropdown_objective', to: 'batch_objectives#dropdown', as: 'batch_dropdown'
      resources :batch_objectives, only: [:create, :destroy]
    end

    resources :learning_objectives, except: [:show]
  end

end
