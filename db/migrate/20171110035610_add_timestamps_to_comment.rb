class AddTimestampsToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :created_at, :datetime
    add_column :comments, :updated_at, :datetime
  end
end
