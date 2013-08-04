class Metafile < ActiveRecord::Base
  has_many :tags, as: :tagable

  has_many :child_metalinks, :class_name => "Metalink", :foreign_key => :metafile_from
  has_many :child_metafiles, :through => :child_metalinks, :source => :child_metafile, :foreign_key => :metafile_to

  has_many :parent_metalinks, :class_name => "Metalink", :foreign_key => :metafile_to
  has_many :parent_metafiles, :through => :parent_metalinks, :source => :parent_metafile, :foreign_key => :metafile_from

end
