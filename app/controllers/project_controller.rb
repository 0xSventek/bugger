class ProjectController < ApplicationController
	before_filter :login_required
	
  def new
  end

  def show
  	@project 	= Project.find(params[:id])
		@bugs			= Ticket.find_all_by_project_id_and_ticket_category_id(params[:id], 1) # 1 is a bug
		@features =	Ticket.find_all_by_project_id_and_ticket_category_id(params[:id], 2) # 2 is a feature  ... these are hard coded for now until i figure out a better way to do it
  end
  
  def create 
  	@project = Project.new(params[:project])
  	if @project.save
  		flash[:message] = 'Project successfully created.'
    	redirect_to  :action => 'show', :id => @project[:id]
  	end
  end
  
  def update_status
  	 @project 	= Project.find(params[:project][:project_id])
  	 @project.update_attributes(:project_status_id => params[:project][:project_status_id], :status_date => Time.now.to_s(:db))
  	 render :action => 'update_status'
  end
  
end
