class CreateInvites < ActiveRecord::Migration
  def change
    drop_table :invites
    create_table :invites do |t|
      t.integer :to_id
      t.integer :from_id
      t.integer :server_id
      t.string :message
      t.boolean :read
      t.boolean :active
      t.boolean :accepted

      t.timestamps null: false
    end
  end
end
