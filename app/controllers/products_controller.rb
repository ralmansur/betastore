class ProductsController < ApplicationController
  def index
    @products = Product.order('name')
  end


  def vote_up
    product = Product.find(params[:id])
    product.increment(:votes)
    product.save
    redirect_to products_path
  end

  def vote_down
    product = Product.find(params[:id])
    product.decrement(:votes)
    product.save
    redirect_to products_path
  end

end
