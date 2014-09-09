class HomepagesController < ApplicationController

  def index
    @stops = Stop.all
    @lines = Line.all
    @stations = Station.all
  end

end
