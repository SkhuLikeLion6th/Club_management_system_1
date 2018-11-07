class Club < ApplicationRecord
    has_many :club_members
    has_many :users
    has_many :posts
    has_many :videos
    has_many :meetings
end
