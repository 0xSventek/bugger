# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
	before_filter :set_user
  # Pick a unique cookie name to distinguish our session data from others'
  session :session_key => '_bugger_session_id'
  
  # won't include application layout if the request is an AJAX (XmlHttpRequest)
  def render(*args)
	  	args.first[:layout] = false if request.xhr? and args.first[:layout].nil?
		super
	end
	
	protected
    def set_user
      @user = User.find(session[:id]) if @user.nil? && session[:id]
      
      if @user
				@person = Person.new
				@person = Person.find(:first, :conditions => ['username = ?', @user.username])
			end
    end

    def login_required
      return true if @user
      access_denied
      return false
    end

    def access_denied
      session[:return_to] = request.request_uri
      flash[:notice] = 'Cripes! You need to login before you can view that page.'
      redirect_to :controller => 'user', :action => 'login'
    end
  end 


