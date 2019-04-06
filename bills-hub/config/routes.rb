Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :utilities
      resources :bills
      resources :companies
      post 'login', to: 'users#login'
      get 'validate', to: 'users#validate'
    end
  end
end
