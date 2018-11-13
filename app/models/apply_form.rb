class ApplyForm < ApplicationRecord
    belongs_to :club
    belongs_to :small_group
    has_many :apply_contents
end
