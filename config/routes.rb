Betastore::Application.routes.draw do
  resources :subscriptions
  get '/products' => 'products#index'

  namespace :admin do
    resources :products
    # get '/products' => 'products#index'
    # get '/products/new' => 'products#new', as: 'new_product'
    # post'/products' => 'products#create'
    # get '/products/:id' => 'products#show', as: 'product'
  end

  root :to => 'subscriptions#new'


end
