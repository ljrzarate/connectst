class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    @activity = Activity.new
  end
end
