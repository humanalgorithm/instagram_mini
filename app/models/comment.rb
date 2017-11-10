class Comment < ApplicationRecord
  belongs_to :image_post
  belongs_to :user
end
