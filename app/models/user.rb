class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :club_members
  has_many :videos
  has_many :posts
  has_many :meetings
  has_many :clubs
  has_many :small_groups
  has_many :group_members
  
  belongs_to :department
  belongs_to :grade
end
