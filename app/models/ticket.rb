class Ticket < ActiveRecord::Base
	belongs_to 	:project
	belongs_to	:ticket_category
	belongs_to	:ticket_resolution
	
	belongs_to			:person, :foreign_key => 'assigned_person_id'
	
	has_many		:ticket_tags
	has_many		:ticket_comments
	
	def get_priority_string
		ticket_priority = ['annoyance', 'minor','low','normal','high','major','critical']
		return ticket_priority[self.priority - 1]
	end 
	
end
