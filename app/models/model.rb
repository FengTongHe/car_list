class Model < ApplicationRecord
  belongs_to :year

  # validates :name, :fuel, :horsepower, :cylinder, :transmission, :door, :size, :style,
  #           presence: true
end
