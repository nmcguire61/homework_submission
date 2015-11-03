class Recipe < ActiveRecord::Base
  belongs_to :category

  has_many :quantities
  has_many :ingredients, through: :quantities

  validates :name, presence: true
  # validates :description, presence: true
  # validates :instructions, presence: true

  # t.string   "name"
  # t.integer  "category_id"
  # t.text     "description"
  # t.text     "instructions"
  # t.datetime "created_at",   null: false
  # t.datetime "updated_at",
end
