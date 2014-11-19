  class Admin::ProductsController < ApplicationController

  def index
    if logged_in?
      @products = Product.order('name')
    else
      redirect_to admin_login_path, alert: 'Please log in to continue'
    end
  end

  def show
    @id = params[:id]
    @product = Product.find(@id)
  end

  def new
    @product = Product.new
  end

  def create
  @product = Product.new(product_params)
    if @product.save
      redirect_to admin_products_path, notice: "Product #{@product.name} was created."
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end


  def update
    @id = params[:id]
    @product = Product.find(@id)
      if @product.update(product_params)
        redirect_to admin_products_path, notice: "Product #{@product.name} was updated."
      else
        render 'edit'
      end
  end

  def destroy
    @id = params[:id]
    @product = Product.find(@id)
    if @product.destroy
      redirect_to admin_products_path, notice: "Product #{@product.name} was deleted."
    else
      render 'show'
    end
  end

  private
    def product_params
      params.require(:product).permit(:name, :price)
    end
  end


  #TODO
  # implement the actions
  # create routes for those actions
  # create a button_to in order to exercise the routes
