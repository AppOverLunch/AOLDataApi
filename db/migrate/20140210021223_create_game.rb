class CreateGame < ActiveRecord::Migration
  def change
    create_table :games do |t|
	t.integer :season_id
	t.integer :game_opponent_id
	t.boolean :is_home
	t.integer :stadium_id
	t.date :gametime
	t.timestamps
    end
  end
end
