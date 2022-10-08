class Manufacture < ApplicationRecord
  has_many :styles
  has_many :years

  validates :name, presence: true, uniqueness: true
end
