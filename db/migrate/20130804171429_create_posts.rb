class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :talk_id
      t.string :post_type
      t.string :content

      t.timestamps
    end
  end
end
