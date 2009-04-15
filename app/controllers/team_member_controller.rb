class TeamMemberController < ApplicationController

  def create
  	@team_member = TeamMember.new(params[:team_member])
  	
  	if @team_member.save 
  		 render :action => 'show', :id => @team_member.id # ,  :layout => nil
   	end
  end

  def show
  	unless request.xhr?
  		flash[:notice] = 'You are not authorized to view that page.'
  		redirect_to :controller => 'overview'
  	end
  	@team_member = TeamMember.find(params[:id])
  end
  
  def destroy 
  	unless request.xhr?
  		flash[:notice] = 'You are not authorized to view that page.'
  		redirect_to :controller => 'overview'
  	end
  	TeamMember.find(params[:id]).destroy
  	render :nothing => true
  end
end
