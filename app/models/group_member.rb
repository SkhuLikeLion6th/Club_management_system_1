class GroupMember < ApplicationRecord
    belongs_to :small_group
    belongs_to :user
        
end
