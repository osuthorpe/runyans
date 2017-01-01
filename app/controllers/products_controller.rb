class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_record, only: [:show, :update, :edit, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(secure_params)

    if @product.save
      redirect_to products_path, notice: 'Product was added'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update_attributes(secure_params)
       redirect_to products_path, notice: "product image updated."
    else
       render 'edit', notice: "Unable to update product."
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: "Product Image deleted"
  end

  private

    def fetch_record
      @product = Product.find(params[:id])
    end

    def secure_params
      params.require(:product).permit(:name, :description, :image, :image_cache, :price, category_ids: [])
    end
end
