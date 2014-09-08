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
end
