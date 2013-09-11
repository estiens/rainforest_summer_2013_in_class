class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find params[:id]
  end

  def edit
    @product = Product.find params[:id]
  end

  def update
    @product = Product.find params[:id]
    if @product.update_attributes(product_params)
      redirect_to product_path
    else
      render "edit"
    end
  end

  def new
  end

  def create
  end

  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end

end