class LinesController < ApplicationController
  def index
    @lines = Line.all
    @line = Line.new
  end

  def create
    @line = Line.new(params[:line])
    @lines = Line.all
    if @line.save
      flash[:notice] = "Line created"
      redirect_to('/lines')
    else
      render('index')
    end
  end

  def show
    @line = Line.find(params[:id])
  end

  def edit
    @line =Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])
    if @line.update(params[:line])
      flash[:notice]="Line Updated"
      redirect_to("/lines/#{@line.id}")
    else
      render('edit')
    end
  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    flash[:alert]= "Line Deleted"
    redirect_to('/lines')
  end

end
