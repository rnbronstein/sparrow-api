Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :diagnoses do
        resources :entries, except: [:create]
      end
      resources :entries, only: [:create]
      get 'diagnoses/:id/metadata', to: 'diagnoses#metadata'
    end
  end
end
