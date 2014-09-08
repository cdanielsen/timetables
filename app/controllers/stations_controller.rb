class StationsController < ApplicationController
  def index
    @stations = Station.all
    @station = Station.new
  end

  def create
    @station = Station.new(params[:station])
    @stations = Station.all
    if @station.save
      flash[:notice] = "Station created!"
      redirect_to('/stations')
    else
      render('index')
    end
  end

  def show
    @station = Station.find(params[:id])
    render('show')
  end

end
