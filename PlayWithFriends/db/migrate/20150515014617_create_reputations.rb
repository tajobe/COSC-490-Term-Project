class CreateReputations < ActiveRecord::Migration
  def change
    create_table :reputations do |t|
      t.integer :to_id
      t.integer :from_id
      t.integer :server_id
      t.integer :rating
      t.string :message

      t.timestamps null: false
    end
  end
end
