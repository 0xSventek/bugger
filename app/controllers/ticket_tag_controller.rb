class TicketTagController < ApplicationController

  def create
  	@ticket_tag = TicketTag.new(params[:ticket_tag])
  	
  	if @ticket_tag.save 
  		 render :action => 'show', :id => @ticket_tag.id # ,  :layout => nil
   	end
  end

  def show
  	unless request.xhr?
  		flash[:notice] = 'You are not authorized to view that page.'
  		redirect_to :controller => 'overview'
  	end
  	@ticket_tag = TicketTag.find(params[:id])
  end
end
