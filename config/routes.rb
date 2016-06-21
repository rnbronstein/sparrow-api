Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/users/current-user', to: 'current_user#show'
      get '/visualization', to: 'diagnoses#index'
      mount Knock::Engine => "/knock"
      resources :users
      resources :entries
      resources :diagnoses
      resources :messages do
        collection do
          post 'reply'
        end
      end
    end
  end
end
