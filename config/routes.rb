Rails.application.routes.draw do

  root to: 'plan/batches#index'

  namespace :plan do
    resources :batches, except: [:show]
    resources :learning_objectives, except: [:show]
  end

end
