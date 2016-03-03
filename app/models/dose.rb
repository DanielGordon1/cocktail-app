class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient

  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]
  validates :description, presence: :true
  validates :ingredient, presence: :true
  validates :cocktail, presence: :true
end
