class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
  mount_uploader :image, ImageUploader 
  default_scope -> { order('created_at DESC') }                 
end