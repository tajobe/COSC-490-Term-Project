class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :owner
      t.string :game_id
      t.integer :up_votes
      t.integer :down_votes
      t.text :title

      t.timestamps null: false
    end
  end
end
