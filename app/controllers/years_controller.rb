class YearsController < ApplicationController
  def index
    @years = Year.includes(:manufacture).order("year DESC")
  end

  def show
    @year = Year.find(params[:id])
  end
end
