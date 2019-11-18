class DashboardsController < ApplicationController
  def my_dashboard
    @my_home = current_user.home
  end
end
