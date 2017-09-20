class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_navigation

  private
    def set_navigation
      @nav_categories = Category.order('lft ASC')
    end
end
