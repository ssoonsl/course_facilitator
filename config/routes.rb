Rails.application.routes.draw do

  devise_for :admins

  namespace :plan do
    resources :weeks, only: [:index, :show] do
      member do
        resources :dailies, only: [:edit, :update]
      end
    end
  end

  post :link_outcome, to: 'plan/dailies#link_outcome'
  # delete :unlink_outcome, to: 'plan/dailies#unlink_outcome'

  root to: 'plan/weeks#index'

end
