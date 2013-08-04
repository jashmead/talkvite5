class Subject < ActiveRecord::Base
  belongs_to :metafile
  belongs_to :talk
  has_many :tags, as: :tagable
end
