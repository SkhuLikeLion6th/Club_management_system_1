class SmallGroup < ApplicationRecord
    has_many :users
    has_one :group_option
end
