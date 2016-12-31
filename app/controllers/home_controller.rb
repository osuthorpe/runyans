class HomeController < ApplicationController
  include ApplicationHelper
  before_action :authenticate_user!, except: [:index]

  def index
    @features = Feature.all
  end

  def admin

  end
end
