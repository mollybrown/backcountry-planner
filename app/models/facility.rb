class Facility

  attr_reader :name, :description, :facility_id

  def initialize(attributes = {})
    @name        = attributes[:FacilityName]
    @description = attributes[:FacilityDescription]
    @facility_id = attributes[:FacilityID]
  end

  def self.find_by_rec_area_number(rec_area_number)
    ParkService.find_facilities(rec_area_number).map do |raw_facility|
      new(raw_facility)
    end
  end

end
