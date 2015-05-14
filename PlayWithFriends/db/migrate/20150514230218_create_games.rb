class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :website
      t.string :description

      t.timestamps null: false
    end

    reversible do |dir|
      change_table :servers do |t|
        dir.up   { t.change :game_id, :integer }
        dir.down { t.change :game_id, :string }
      end
    end
  end
end
