class StatsController < ApplicationController
  def index
    @trips = Trip.all
    @drivers = Driver.all
  end

  def trip_count
    render json: {"tripCount": Trip.count}
  end
end
