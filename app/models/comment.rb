class Comment < ActiveRecord::Base
  belongs_to :article, :order => 'created_at DESC'
end
