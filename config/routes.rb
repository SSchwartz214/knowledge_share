Rails.application.routes.draw do
  root 'welcome#index'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'logout', to: 'sessions#destroy'

  get '/search', to: 'search#new'
  post '/search', to: 'search#index'

  get '/dashboard', to: 'dashboard#index'

  resources :books, only: [:create, :show, :destroy]

  resources :friendships, only: [:create, :destroy]

  resources :friends, only: [:index]

  resource :recommendations, only: [:create]

  namespace :api do
    namespace :v1 do
      namespace :user do
        resources :books, only: [:index]
    end
  end
end

end
