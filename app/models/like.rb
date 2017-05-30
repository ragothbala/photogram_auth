class Like < ApplicationRecord
belongs_to :photo
belongs_to :user

validates :user_id, :presence => true, :uniqueness => {:scope => :photo_id}
validates :photo_id, :presence => true

end
