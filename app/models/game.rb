class Game < ActiveRecord::Base
	has_many :innings
	belongs_to :schedule
end
