class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|

      t.references :user_from
      t.references :user_to

      t.string :message_type
      t.string :content

      t.timestamps

    end
  end
end
