Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]

  resources :users, only: [:index, :update, :show]

  root to: 'users#index'
end
