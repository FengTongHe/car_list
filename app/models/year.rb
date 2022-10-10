class Year < ApplicationRecord
  belongs_to :manufacture
  has_many :models

  validates :year, uniqueness: { scope: :manufacture_id }
end
