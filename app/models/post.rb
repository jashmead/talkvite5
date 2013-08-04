## force post types to:  join, leave, comment
class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :talk
  has_many :tags, as: :tagable
end
