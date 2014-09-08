class StationsController < ApplicationController
  def index
    @stations = Station.all
    @station = Station.new
  end

  def create
    @station = Station.new(params[:station])
    if @station.save
      flash[:notice] = "Station created!"
      redirect_to('/stations')
    else
      flash[:alert] = "Can't create a station with no name!"
      redirect_to('/stations')
    end
  end

end
