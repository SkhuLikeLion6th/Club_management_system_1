class ApplyForm < ApplicationRecord
    belongs_to :club
    has_many :apply_contents
end
