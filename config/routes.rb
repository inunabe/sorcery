Rails.application.routes.draw do
  root 'users#index'
  resources :users
  resources :users_sessions

  get 'login' => 'user_sessions#new'
  get 'logout' => 'user_sessions#destroy'

end
