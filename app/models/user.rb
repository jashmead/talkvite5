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
  has_many :tags, as: :tagable

  has_many :received_messages, :class_name => "Message", :foreign_key => :user_from
  has_many :receivers, :through => :received_messages, :source => :receiver, :foreign_key => :user_to

  has_many :sent_messages, :class_name => "Message", :foreign_key => :user_to
  has_many :senders, :through => :sent_messages, :source => :sender, :foreign_key => :user_from

end
