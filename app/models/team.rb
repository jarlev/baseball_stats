class Team < ActiveRecord::Base
	has_many :players
	has_many :games
	has_many :lineups
	belongs_to :manager, class_name: 'User'
	belongs_to :league
end
