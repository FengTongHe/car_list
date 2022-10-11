class Model < ApplicationRecord
  belongs_to :year

  has_many :model_categories
  has_many :categories, through: :model_categories

  def self.year_and_model
    @models = Model.left_joins(:year).order("year DESC")
  end
end
