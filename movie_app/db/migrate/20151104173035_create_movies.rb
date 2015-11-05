class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :about
      t.text :review

      t.timestamps null: false
    end
  end
end
