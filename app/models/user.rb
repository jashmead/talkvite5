##  validate name, email unique
##  add in authentication 
class User < ActiveRecord::Base
  has_many :talks
  has_many :posts
  has_many :talks, through: :posts
end
