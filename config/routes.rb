Rails.application.routes.draw do
  root 'users#index'
  resources :users, only:[:new, :create, :update,:show, :destroy] 
  get '/new' => 'users#new'
  get '/edit' => 'users#edit'
  # session - ontroller/method name

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

end
