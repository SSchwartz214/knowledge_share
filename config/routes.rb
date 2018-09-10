Rails.application.routes.draw do
  root 'welcome#index'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'logout', to: 'sessions#destroy'

  get '/search', to: 'search#new'
  post '/search', to: 'search#index'
end
