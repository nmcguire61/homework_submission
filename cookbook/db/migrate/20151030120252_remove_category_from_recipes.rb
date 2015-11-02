class RemoveCategoryFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :category, :string
  end
end
