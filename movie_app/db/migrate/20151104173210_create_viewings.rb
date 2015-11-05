class CreateViewings < ActiveRecord::Migration
  def change
    create_table :viewings do |t|
      t.string :viewing_type
      t.string :when_viewed

      t.timestamps null: false
    end
  end
end
