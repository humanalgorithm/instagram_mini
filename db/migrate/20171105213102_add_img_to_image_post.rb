class AddImgToImagePost < ActiveRecord::Migration[5.0]
  def up
    add_attachment :image_posts, :img
    add_foreign_key :image_posts, :users
  end

  def down
    remove_attachment :image_posts, :img
    remove_foreign_key :image_posts, :users
  end
end
