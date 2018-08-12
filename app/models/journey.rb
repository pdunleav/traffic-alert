class Journey < ApplicationRecord

  validates :origin_address, presence: true
  validates :destination_address, presence: true
  validates :arrival_time, presence: true
  validates :duration, presence: true, unless: Proc.new { |j| j.primary }

  before_save :geocode_origin_address
  before_save :geocode_destination_address

  belongs_to :user

  private

  def geocode_origin_address
    if origin_address_changed?
      geocoded = Geocoder.search(origin_address).first
      if geocoded
        self.origin_latitude = geocoded.latitude
        self.origin_longitude = geocoded.longitude
      end
    end
  end

  def geocode_destination_address
    if destination_address_changed?
      geocoded = Geocoder.search(destination_address).first
      if geocoded
        self.destination_latitude = geocoded.latitude
        self.destination_longitude = geocoded.longitude
      end
    end
  end
end
