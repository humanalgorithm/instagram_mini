class ImagePost < ApplicationRecord
  
  has_attached_file :img,  styles: { 
    medium: "800x500>", 
    medium_square: "500x500",
    small: "200x200", 
    thumb: "100x100>" }, 
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :img,  content_type: /\Aimage\/.*\z/
  
  belongs_to :user
  has_many :comments
  accepts_nested_attributes_for :comments
  
end
 