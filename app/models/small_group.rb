class SmallGroup < ApplicationRecord
    has_many :group_members
    has_many :users
    has_one :group_option
    
    
    mount_uploader :img_url, ImguploaderUploader
acts_as_commentable
end
