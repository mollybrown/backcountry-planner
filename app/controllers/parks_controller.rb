class ParksController < ApplicationController
  def show
    @park = Park.find(params[:id])
    @campgrounds = Facility.find_by_rec_area_number(@park.rec_area_number)
  end
end
