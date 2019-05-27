class Image < ApplicationRecord
    belongs_to :user
    belongs_to :course
    mount_uploader :picture, PictureUploader
end
