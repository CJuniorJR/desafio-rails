Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  
  match 'users/:id' => 'users#setActiveFlag', :via => :put, :as => :user_active_flag

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
