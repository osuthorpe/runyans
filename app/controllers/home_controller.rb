class HomeController < ApplicationController
  include ApplicationHelper
  before_action :authenticate_user!, except: [:index]

  def index
    @features = Feature.all
    @services = Service.where(homepage: true)
    @categories = Category.where(depth: 0)
  end

  def admin

  end
end
