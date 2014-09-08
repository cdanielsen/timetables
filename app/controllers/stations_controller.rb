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

  def edit
    @station = Station.find(params[:id])
    render('edit')
  end

  def update
    @station = Station.find(params[:id])
    if @station.update(params[:station])
      flash[:notice]="Station Updated"
      redirect_to("/stations/#{@station.id}")
    else
      render('edit')
    end
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    flash[:alert]= "Station Deleted"
    redirect_to('/stations')
  end

end
