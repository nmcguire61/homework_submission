class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :team_id
      t.string :position
      t.string :broomstick

      t.timestamps null: false
    end
  end
end
