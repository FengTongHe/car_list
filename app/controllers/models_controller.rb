class ModelsController < ApplicationController
  def index
    @models = Model.year_and_model.page(params[:page])
  end

  def show
    @model = Model.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @models = Model.where("name LIKE ?", wildcard_search)
  end
end
