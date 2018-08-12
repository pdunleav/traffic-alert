class UsersController < ApplicationController

  def show
    @user = current_user
    @journey = @user.journeys.where.not(origin_latitude: nil, origin_longitude: nil,
                                        destination_longitude: nil, destination_longitude: nil).first
    @markers = [
                 {
                   lat: @journey.origin_latitude,
                   lng: @journey.origin_longitude
                 },
                 {
                   lat: @journey.destination_latitude,
                   lng: @journey.destination_longitude
                 }
               ]
  end
end
