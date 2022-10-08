class Model < ApplicationRecord
  belongs_to :style
  belongs_to :year

  validates :name, :fuel, :horsepower, :cylinder, :transmission, :door, :size, presence: true
end
