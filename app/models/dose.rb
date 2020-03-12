class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
  belongs_to :ingredient, dependent: :destroy
  belongs_to :cocktail
end
