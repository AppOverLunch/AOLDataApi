class CreateStadium < ActiveRecord::Migration
  def change
    create_table :stadia do |t|
	t.string :name
	t.decimal :latitude
	t.decimal :longitude
	t.integer :team_id
	t.timestamps
    end
  end
end
