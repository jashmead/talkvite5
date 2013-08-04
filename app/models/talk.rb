# Talk
#   Talk is child of Users, parent of Posts
#   Talk points up to location (optional, but strongly recommended)

## TBD
#   Lots of small associations

class Talk < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  has_many :users, through: :posts
  has_one :location
  has_many :tags, as: :tagable
end
