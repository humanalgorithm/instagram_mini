class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_attached_file :avatar,  styles: {thumb: "100x100"}, 
   :default_url => "/assets/blank_avatar.png"
  validates_attachment_content_type :avatar,  content_type: /\Aimage\/.*\z/
  has_many :image_posts
end
