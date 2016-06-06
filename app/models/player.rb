class Player < ActiveRecord::Base
	belongs_to :team
	belongs_to :lineup
	has_one :hitter_stat
end
