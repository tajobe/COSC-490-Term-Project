class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :website
      t.string :description

      t.timestamps null: false
    end

    change_column :servers, :game_id, 'integer USING CAST(game_id AS integer)'
  end
end
