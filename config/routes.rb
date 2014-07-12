Rails.application.routes.draw do
  root to: 'pages#home'

  match '/home', { :via => :get, :to => 'pages#home' }

  devise_for :users
 
end
