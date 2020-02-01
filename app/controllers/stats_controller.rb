class StatsController < ApplicationController
  def index
    @trips = Trip.all
    @drivers = Driver.all
  end
end
