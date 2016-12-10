Rails.application.routes.draw do

  scope :api do
    resources :comments
    resources :vineyards
    resources :users, except: [:create]
    post 'register', to: 'auth#register'
    post 'login', to: 'auth#login'
  end

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
