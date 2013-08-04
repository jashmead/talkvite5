# have to add the needed linking fields by hand, for each has_many/belongs_to pair
class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :location_id, :integer
    add_column :talks, :location_id, :integer
  end
end
