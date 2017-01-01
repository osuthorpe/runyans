class CategoriesController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :fetch_record, only: [:show, :update, :edit, :destroy]

  def index
    @categories = Category.roots.order(name: :desc)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(secure_params)

    if @category.save
      redirect_to categories_path, notice: "Category Created"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @category.update_attributes(secure_params)
       redirect_to categories_path, notice: "category updated."
    else
       render 'edit', notice: "Unable to update category."
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path, notice: "Category deleted"
  end

  private

    def fetch_record
      @category = Category.find(params[:id])
    end

    def secure_params
      params.require(:category).permit(:name, :parent_id)
    end
end
