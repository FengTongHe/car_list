class ModelsController < ApplicationController
  def index
    @models = Model.includes(:year).all.order("name DESC")
  end

  def show
    @model = Model.find(params[:id])
  end
end
