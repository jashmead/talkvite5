class Message < ActiveRecord::Base
  belongs_to :sender, :class_name => "User", :foreign_key => :user_from
  belongs_to :receiver, :class_name => "User", :foreign_key => :user_to
end
