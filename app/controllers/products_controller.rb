class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    if @product = Product.find(params[:id])
      @product.update_attributes(params[:product].permit(:name,:description,:category_id,:price))
    end
    redirect_to products_path
  end

  def create
    @product = Product.new(params[:product].permit(:name, :price, :description))
    @product.save
    redirect_to products_path
  end

  def destroy
    if @product = Product.find(params[:id])
      @product.delete
    end
  end

end
