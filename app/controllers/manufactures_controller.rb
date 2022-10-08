class ManufacturesController < ApplicationController
  def index
    @manufactures = Manufacture.all.order("name ASC")
  end

  def show
    @manufacture = Manufacture.find(params[:id])
  end
end
