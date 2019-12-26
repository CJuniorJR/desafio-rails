Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    authenticated :user do
      root to: "pages#home", as: :authenticated_root
    end

    unauthenticated :user do
      root to: "devise/sessions#new", as: :unauthenticated_root
    end
  end
  
  match 'users/:id' => 'users#setActiveFlag', :via => :patch, :as => :user_active_flag

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
