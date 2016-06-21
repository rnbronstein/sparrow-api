Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/users/current-user', to: 'current_user#show'
      get '/visualization', to: 'diagnoses#index'
      resources :users
      mount Knock::Engine => "/knock"
      resources :entries
    end
  end
end
