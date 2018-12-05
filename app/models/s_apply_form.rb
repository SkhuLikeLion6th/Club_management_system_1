class SApplyForm < ApplicationRecord

    belongs_to :small_group
    has_many :s_apply_contents    
end
