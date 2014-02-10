class CreateSeason < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
	t.integer :year
	t.integer :team_id
	t.timestamps
    end
  end
end
