class StopsController < ApplicationController

  def index
    @stops = Stop.all
    @stop = Stop.new
  end

  def create
    @stop = Stop.new(params[:stop])
    if @stop.save
      flash[:notice] = "Stop created!"
      redirect_to('/stops')
    else
      render('index')
    end
  end

  def show
    @stop = Stop.find(params[:id])
  end
end
