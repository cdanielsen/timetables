class StopsController < ApplicationController

  def index
    @stops = Stop.all
    @stop = Stop.new
  end

  def create
    @stops = Stop.all
    @stop = Stop.new(params[:stop])
    if @stop.save
      redirect_to('/stops')
    else
      render('index')
    end
  end

  def show
    @stop = Stop.find(params[:id])
  end

  def edit
    @stop = Stop.find(params[:id])
  end

  def update
    @stop = Stop.find(params[:id])
    if @stop.update(params[:stop])
      flash[:notice]="Stop updated"
      redirect_to("/stops/#{@stop.id}")
    else
      render('edit')
    end
  end

  def destroy
    @stop = Stop.find(params[:id])
    @stop.destroy
    flash[:alert]="Stop Deleted"
    redirect_to('/stops')
  end
end
