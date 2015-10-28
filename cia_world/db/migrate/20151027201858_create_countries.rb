class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.text :flag
      t.float :size
      t.integer :population
      t.string :language

      t.timestamps null: false
    end
  end
end
