Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  match 'users/:id' => 'users#deactivate', :via => :put, :as => :deactivate_user
  match 'users/:id' => 'users#activate', :via => :put, :as => :activate_user
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
