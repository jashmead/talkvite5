class CreateMetalinks < ActiveRecord::Migration
  def change
    create_table :metalinks do |t|
      t.integer :metafile_from_id
      t.integer :metafile_to_id
      t.string :metalink_type
      t.string :metalink_data

      t.timestamps
    end
  end
end
