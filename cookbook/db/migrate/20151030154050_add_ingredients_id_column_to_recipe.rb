class AddIngredientsIdColumnToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :ingredients_id, :integer
  end
end
