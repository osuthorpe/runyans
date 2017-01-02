class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_record, only: [:show, :update, :edit, :destroy]

  def index
    @users = User.all
  end

  def destroy
    @user.destroy
    redirect_to users_path, notice: "Website user deleted"
  end

  private

    def fetch_record
      @user = User.find(params[:id])
    end
end
