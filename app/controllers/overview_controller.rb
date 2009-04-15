class OverviewController < ApplicationController
	before_filter :login_required
	
  def index
  	@projects = Project.find(:all)
  end
end
