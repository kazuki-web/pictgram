class Topic < ApplicationRecord
    validates :user_id, presence: true
    validates :description, presence: true
    validates :image, presence: true
    
    belong_to :user
    
    mount_uploader :image, Imageloader
    
    has_many :favotites
    has_many :favorite_user, through: :favotites,source:'user'
end
