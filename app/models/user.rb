# User 
#   points up to Locations (location is optional)

##  TBD
##    validate name, email unique
##    add in authentication 
##    lots of small tools, using associations

class User < ActiveRecord::Base
  has_many :talks
  has_many :posts
  has_many :talks, through: :posts
  has_one :location   # current location of the user
end
