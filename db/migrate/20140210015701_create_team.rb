class CreateTeam < ActiveRecord::Migration
  def change
    create_table :teams do |t|
	t.string :name
	t.string :town
	t.string :state
	t.string :color
	t.timestamps
    end
  end
end
