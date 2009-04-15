class TicketCategory < ActiveRecord::Base
	has_many	:tickets
end
