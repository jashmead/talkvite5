class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :location_type
      t.string :street1
      t.string :street2
      t.string :city
      t.string :country
      t.string :post_code
      t.text :address_full
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
