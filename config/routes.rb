Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show]
      post 'login', to: 'auth#login'
      get '/*a', to: 'application#not_found'
    end
  end
end
