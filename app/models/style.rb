class Style < ApplicationRecord
  belongs_to :manufacture
  has_many :models

  validates :name, presence: true, uniqueness: true
end
