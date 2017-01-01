class FeaturesController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_record, only: [:show, :update, :edit, :destroy]

  def index
    @features = Feature.all
  end

  def new
    @feature = Feature.new
  end

  def create
    @feature = Feature.new(secure_params)

    if @feature.save
      redirect_to features_path, notice: 'Feature was added'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @feature.update_attributes(secure_params)
       redirect_to features_path, notice: "featured image updated."
    else
       render 'edit', notice: "Unable to update featured image."
    end
  end

  def destroy
    @feature.destroy
    redirect_to features_path, notice: "Featured Image deleted"
  end

  private

    def fetch_record
      @feature = Feature.find(params[:id])
    end

    def secure_params
      params.require(:feature).permit(:title, :image, :image_cache, :homepage)
    end
end
