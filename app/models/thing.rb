class Thing < ApplicationRecord
has_many :comments  
has_many :tasks
mount_uploader :picture, PictureUploader
end
