Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/users/current-user', to: 'current_user#show'
      resources :users
      mount Knock::Engine => "/knock"
      resources :diagnoses do
        resources :entries, except: [:create]
      end
      resources :entries, only: [:create]
      get 'diagnoses/:id/metadata', to: 'diagnoses#metadata'
    end
  end
end
