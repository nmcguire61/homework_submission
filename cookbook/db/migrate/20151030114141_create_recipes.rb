class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :method
      t.string :category

      t.timestamps null: false
    end
  end
end
