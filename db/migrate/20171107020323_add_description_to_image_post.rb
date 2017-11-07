class AddDescriptionToImagePost < ActiveRecord::Migration[5.0]
  def change
    add_column :image_posts, :description, :string
  end
end
