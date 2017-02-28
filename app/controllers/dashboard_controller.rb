class DashboardController < ApplicationController

  def index
    @user = current_user
    @trips = @user.trips
    @parks = Park.all
  end

end
