class Ingredient < ActiveRecord::Base
  has_many :recipes
  has_and_belongs_to_many :recipes
end
