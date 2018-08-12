class JourneysController < ApplicationController

  def new
    @journey = Journey.new
    @journey.primary = true if current_user.journeys.empty?
  end

  def create
    @journey = Journey.new(journey_params)
    @journey.primary = true if current_user.journeys.empty?
    @journey.user = current_user
    if @journey.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def journey_params
    params.require(:journey).permit(:origin_address, :destination_address, :arrival_time,
                                    :car, :bicycle, :public_transport, :duration)
  end
end
