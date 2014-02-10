class Game < ActiveRecord::Base
	belongs_to :season
	belongs_to :game_opponent
	belongs_to :stadium
end
