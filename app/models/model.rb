class Model < ApplicationRecord
  belongs_to :year

  has_many :model_categories
  has_many :categories, through: :model_categories

  # validates :name, :fuel, :horsepower, :cylinder, :transmission, :door, :size, :style,
  #           presence: true
end
