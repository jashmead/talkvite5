# Location is a "top" table
class Location < ActiveRecord::Base
  has_many :talks
  has_many :users
  has_many :tags, as: :tagable
end
