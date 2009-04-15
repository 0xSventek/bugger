class Project < ActiveRecord::Base
	has_many 	:tickets
	has_many 	:team_members
	has_many 	:people, :through =>:team_members
	
	belongs_to 	:project_status
end
