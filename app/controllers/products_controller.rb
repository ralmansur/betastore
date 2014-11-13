class ProductsController < ApplicationController
  def index
    @products = Product.order('name')
  end
end

def vote_up
  product = Product.find(params[:id])
  product.increment(:votes)
  product.save
end

def vote_down
  product = Product.find(params[:id])
  product.decrement(:votes)
  product.save
end
