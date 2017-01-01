class ServicesController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_record, only: [:show, :update, :edit, :destroy]

  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(secure_params)

    if @service.save
      redirect_to services_path, notice: "Service Created"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @service.update_attributes(secure_params)
       redirect_to services_path, notice: "service updated."
    else
       render 'edit', notice: "Unable to update service."
    end
  end

  def destroy
    @service.destroy
    redirect_to services_path, notice: "Service deleted"
  end

  private

    def fetch_record
      @service = Service.find(params[:id])
    end

    def secure_params
      params.require(:service).permit(:title, :description, :order, :image, :homepage)
    end
end
