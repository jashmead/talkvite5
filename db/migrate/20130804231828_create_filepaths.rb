class CreateFilepaths < ActiveRecord::Migration
  def change
    create_table :filepaths do |t|
      t.integer :metafile_id
      t.string :pathname
      t.string :file_type

      t.timestamps
    end
  end
end
