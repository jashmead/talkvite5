## no changes currently planned
class Talk < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  has_many :users, through: :posts
end
