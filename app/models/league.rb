class League < ActiveRecord::Base
	has_many :teams, dependent: :destroy
	has_many :regular_seasons
	belongs_to :commissioner, class_name: 'User'
end
