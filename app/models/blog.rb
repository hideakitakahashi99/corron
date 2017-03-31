class Blog < ApplicationRecord
    acts_as_taggable_on :labels
    acts_as_taggable
    mount_uploader :blogimage, BlogimageUploader
end
