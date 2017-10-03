class TeamsController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_record, only: [:show, :update, :edit, :destroy]

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(secure_params)

    if @team.save
      redirect_to teams_path, notice: "Team Created"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @team.update_attributes(secure_params)
       redirect_to teams_path, notice: "team member updated."
    else
       render 'edit', notice: "Unable to update team member."
    end
  end

  def destroy
    @team.destroy
    redirect_to teams_path, notice: "Team member deleted"
  end

  private

    def fetch_record
      @team = Team.find(params[:id])
    end

    def secure_params
      params.require(:team).permit(:title, :name, :description, :order, :image, :status)
    end
end
