class AddColumnMovieIdToViewing < ActiveRecord::Migration
  def change
    add_column :viewings, :movie_id, :integer
  end
end
