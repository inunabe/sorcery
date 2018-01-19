Rails.application.routes.draw do
  root 'users#index'
  resources :users do
    member do
      get :activate
    end
  end
  resources :users_sessions

  get 'login' => 'user_sessions#new'
  get 'logout' => 'user_sessions#destroy'

end
