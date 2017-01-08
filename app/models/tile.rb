class Tile < ApplicationRecord
  belongs_to :user
  validates :picture, presence: true
  validates :user_id, presence: true
  
  has_attached_file :picture, styles: { medium: "600x" }
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
