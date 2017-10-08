Rails.application.routes.draw do

  root to: 'plan/batches#index'

  namespace :plan do
    get 'batch_dashboard/:id', to: 'batches#dashboard', as: 'batch_dashboard'
    resources :batches, except: [:show]
    resources :learning_objectives, except: [:show]
    resources :batch_objectives, only: [:create]
  end

end
