class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.integer :metafile_id
      t.integer :talk_id
      t.string :subject_type
      t.string :content

      t.timestamps
    end
  end
end
