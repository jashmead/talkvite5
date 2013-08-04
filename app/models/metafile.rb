class Metafile < ActiveRecord::Base
  has_many :tags, as: :tagable
end
