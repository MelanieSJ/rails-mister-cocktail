class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy # man will nicht dose behalten, wenn Cocktail zerstört wird
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
  # validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
