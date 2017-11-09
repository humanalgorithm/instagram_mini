class AddImageIdToComment < ActiveRecord::Migration[5.0]
  def change
      add_column :comments, :image_post_id, :integer
  end
end


