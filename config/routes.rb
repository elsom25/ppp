Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]

  authenticated :user do
    mount Upmin::Engine => '/admin'

    resources :users, only: [:index, :update, :show]
    resources :projects

    devise_scope :user do
      root to: 'users#index'
    end
  end
  unauthenticated do
    devise_scope :user do
      root to: 'devise/sessions#new', as: 'unauthenticated'
    end
  end
end
