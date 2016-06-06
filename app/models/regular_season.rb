class RegularSeason < ActiveRecord::Base
	belongs_to :league
	has_many :schedules
	has_one :post_season
end
