class ParkService
  def self.find_facilities(rec_area_number)
    response = Faraday.get("https://ridb.recreation.gov/api/v1/recareas/#{rec_area_number}/facilities?apikey=#{ENV['RIDB_API_KEY']}")
    JSON.parse(response.body, symbolize_names: true)[:RECDATA]
  end
end
