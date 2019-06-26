Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :questions, only: [:index, :create, :update, :show, :destroy] do 
    member do 
      post :answer
    end
  end
end
