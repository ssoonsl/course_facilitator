Rails.application.routes.draw do

  root to: 'plan/batches#index'

  namespace :plan do
    resources :batches, only: [:index, :new, :create, :edit, :update]
  end

end
