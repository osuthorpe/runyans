class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_navigation

  private
    def set_navigation
      @nav_categories = Category.where(navigation: true).order(name: :desc)
      @nav_services = Service.published.order(title: :desc)
    end
end
