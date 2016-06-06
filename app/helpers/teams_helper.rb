module TeamsHelper

	def manager?
		current_user == @team.manager
	end

end
