Rails.application.routes.draw do
  root to: 'events#index'
  resources :users, only: [:new, :create, :show]
  resources :user_sessions, only: [:new, :create, :destroy]
  resources :events
  
  get 'login' => 'user_sessions#new'
  get 'logout' => 'user_sessions#destroy'
end
