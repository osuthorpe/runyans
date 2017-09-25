class HomeController < ApplicationController
  include ApplicationHelper
  before_action :authenticate_user!, except: [:index]

  def index
    @features = Feature.published
    @services = Service.published.where(homepage: true)
  end

  def admin

  end
end
