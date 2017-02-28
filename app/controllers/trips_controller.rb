class TripsController < ApplicationController

  def show
    @trip = Trip.find(params[:id])
    # @campground = Trip.find(params[:campground_id])
  end

  def new
    @trip = Trip.new
    @campground = Campground.find_or_create_by(name: params[:campground], description: params[:description], park_id: params[:national_park_id])
    @park = Park.find(params[:national_park_id])
  end

  def create
    trip = Trip.new(trip_params)

    if trip.save
      flash[:success] = "Your trip has been created!"
      redirect_to trip_path(trip)
    else
      flash[:failure] = "Your trip could not be created."
      render :new
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:title, :description, :start_date, :end_date)
  end

end
