class Metalink < ActiveRecord::Base
  belongs_to :parent_metafile, :class_name => "Metalink", :foreign_key => :metalink_from
  belongs_to :child_metafile, :class_name => "Metalink", :foreign_key => :metalink_to
end
