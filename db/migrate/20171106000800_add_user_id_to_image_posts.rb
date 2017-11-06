class AddUserIdToImagePosts < ActiveRecord::Migration[5.0]
  def change
      add_column :image_posts, :user_id, :integer
  end
end
