class Topic < ApplicationRecord
    validates :user_id, presence: true
    validates :description, presence: true
    validates :image, presence: true
    
    belong_to :user
    
    mount_uploader :image, Imageloader
    
end
