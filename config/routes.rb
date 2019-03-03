Rails.application.routes.draw do



  root to: "home#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/secret'
  
  resources :pictures do
    resources :pics, only: [:create]
  end

  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end

end
