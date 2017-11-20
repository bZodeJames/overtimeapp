Rails.application.routes.draw do
  resources :posts
  namespace :admin do
    resources :users
    resources :posts
    resources :admin_users

    root to: "users#index"
  end

  devise_for :users, skip: [:registrations]
  
  root to: 'static#homepage'
end
