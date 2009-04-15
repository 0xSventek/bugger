class TicketController < ApplicationController
	before_filter :login_required
	
	def new 
		if params[:id] == nil
			flash[:error] = "Please Specify a Project"
			redirect_to :controller => 'overview'
		else
			#  business requirements
		end
	end 
	
	def show
		@ticket = Ticket.find(params[:id])
		@project = Project.find(@ticket.project_id)
	end 
	
	def create
		@ticket = Ticket.new(params[:ticket])
		
		if @ticket.save
			flash[:message] = 'Ticket successfully created.'
    	redirect_to  :action => 'show', :id => @ticket[:id]
    else
    	flash[:error] = "An error occurred."
    	redirect_to :action => 'new', :ticket => params[:ticket]
    end	
		
	end 
	
	def assign_ticket
		 @ticket 	= Ticket.find(params[:ticket][:ticket_id])
  	 @ticket.update_attributes(:assigned_person_id => params[:ticket][:id], :date_assigned => Time.now.to_s(:db))
  	 render :action => 'assign_ticket'
	end
	
end
