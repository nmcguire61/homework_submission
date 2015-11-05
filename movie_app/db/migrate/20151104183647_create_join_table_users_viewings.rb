class CreateJoinTableUsersViewings < ActiveRecord::Migration
  def change
    create_join_table :users, :viewings do |t|
      # t.index [:user_id, :viewing_id]
      # t.index [:viewing_id, :user_id]
    end
  end
end
