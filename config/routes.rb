Betastore::Application.routes.draw do
  resources :subscriptions
  get '/products' => 'products#index'

  namespace :admin do
    resources :products
    # get '/products' => 'products#index', as: 'index'
    # get '/products/new' => 'products#new', as: 'new_product'
    # post'/products' => 'products#create'
    # get '/products/:id' => 'products#show', as: 'product'

#    get '/products'          => 'products#index', as: 'products'
#   post '/products'          => 'products#create'
#    get '/products/new'      => 'products#new',   as: 'new_product'
#    get '/products/:id/edit' => 'products#edit',  as: 'edit_product'
#    get '/products/:id'      => 'products#show',  as: 'product'
#  patch '/products/:id'      => 'products#update'
# delete '/products/:id'      => 'products#destroy

  end

  root :to => 'subscriptions#new'


end
