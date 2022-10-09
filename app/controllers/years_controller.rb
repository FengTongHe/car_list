class YearsController < ApplicationController
  def index
    @years = Year.includes(:manufacture).all.order("year DESC")
  end

  def show
    @year = Year.find(params[:id])
  end
end
