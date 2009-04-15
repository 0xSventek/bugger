class HomeController < ApplicationController

	def index 
		@ticket_count = Ticket.count
	end 
	
end
