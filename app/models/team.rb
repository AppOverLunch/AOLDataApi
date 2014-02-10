class Team < ActiveRecord::Base
	has_many :seasons	
	has_many :games
	has_many :stadiums
end
