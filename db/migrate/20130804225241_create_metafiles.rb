class CreateMetafiles < ActiveRecord::Migration
  def change
    create_table :metafiles do |t|

      t.string :name
      t.string :description
      t.string :meta_type
      t.text :meta_data
      t.text :meta_controls

      t.timestamps
    end
  end
end
