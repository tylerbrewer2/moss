Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'authentication#login'

  post '/sign_in', to: 'authentication#sign_in'
  get '/sign_up', to: 'authentication#sign_up', as: :sign_up
  post '/create_user', to: 'authentication#create_user', as: :create_user

  get '/dashboard', to: 'dashboard#index', as: :dashboard

  namespace :api do
    post '/account/create', to: 'account#create', as: :create_account
  end
end
