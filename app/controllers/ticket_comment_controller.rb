class TicketCommentController < ApplicationController

  def create
  	@ticket_comment = TicketComment.new(params[:ticket_comment])
  	
  	if @ticket_comment.save 
  		 render :action => 'show', :id => @ticket_comment.id # ,  :layout => nil
   	end
  end

  def show
  	unless request.xhr?
  		flash[:notice] = 'You are not authorized to view that page.'
  		redirect_to :controller => 'overview'
  	end
  	
  	@ticket_comment = TicketComment.find(params[:id])
  end
end
