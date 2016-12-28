class HomeController < ApplicationController
  include ApplicationHelper
  before_action :authenticate_user!, except: [:index]
  before_action :require_current_user, except: [:index]

  def index

  end

  def admin

  end
end
