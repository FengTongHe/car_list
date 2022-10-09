class Year < ApplicationRecord
  belongs_to :manufacture
  has_many :models

  validates :year, presence: true, uniqueness: { scope: :manufacture_id }
end
