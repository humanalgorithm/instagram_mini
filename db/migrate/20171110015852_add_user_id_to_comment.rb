class AddUserIdToComment < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :comments, :users
    add_column :comments, :user_id, :integer
  end
end
