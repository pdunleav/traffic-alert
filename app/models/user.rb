class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  before_save :geocode_work_address
  before_save :geocode_home_address


  private

  def geocode_work_address
    if work_address_changed?
      geocoded = Geocoder.search(work_address).first
      if geocoded
        self.work_latitude = geocoded.latitude
        self.work_longitude = geocoded.longitude
      end
    end
  end

  def geocode_home_address
    if home_address_changed?
      geocoded = Geocoder.search(home_address).first
      if geocoded
        self.home_latitude = geocoded.latitude
        self.home_longitude = geocoded.longitude
      end
    end
  end
end
