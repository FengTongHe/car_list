class Category < ApplicationRecord
  has_many :model_categories
  has_many :models, through: :model_categories

  validates :name, presence: true, uniqueness: true
end
