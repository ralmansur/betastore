class Admin::ProductsController < ApplicationController
  def index
    @products = Product.order('name')
  end

  def show
    @id = params[:id]
    @product = Product.find(@id)
  end

  def new
    @product = Product.new
  end

  def create
  @product = Product.new(params.require(:product).permit!)
    if @product.save
      redirect_to admin_products_path, notice: "Product #{@product.id} was created"
    else
      render 'new'
    end
  end

  # def edit
  #   @id = params[:id]
  #   @product = Product.find(@id)
  #     if @prodcut.save
  #       redirects_to admin_product_path, notice: "Product #{{@product.id}} was edited"
  #     else
  #       render 'show'
  #     end
  # end

end
