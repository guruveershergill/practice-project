Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
resources :articles
  # Defines the root path route ("/")
  # root "articles#index"
 root 'pages#home'
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new' 
   resources :users, except: [:new]
  # resources :users, only: [:index, :show, :edit, :update]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


end
