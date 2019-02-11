Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :polls, only: [:index, :show]
  resources :votes, only: [:create]

  namespace :admin do
    resources :results, only: :create
  end

  root to: 'polls#index'
end
