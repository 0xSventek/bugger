class UserController < ApplicationController

  def login
  	@user = User.new
  	@user.username = params[:username]
  end

  def process_login
  	if user = User.authenticate(params[:user])
  		session[:id] = user.id # store user's id in session
  		
  		if session[:return_to] == nil 
  			redirect_to :controller => 'overview'
  		else
  			redirect_to session[:return_to] || '/'
  		end 
  		
  	else 
  		flash[:error] = 'Invalid Login.'
  		redirect_to :action => 'login', :username => params[:user][:username]
  	end   	
  end

  def logout
  	reset_session
  	flash[:notice] = 'Logged Out.'
  	redirect_to '/'
  end

  def my_account
  end
  
  def new 
  end
  
  def create 
	  @user = User.new(params[:user])
  	@person = Person.new(params[:person])
  	
    if @user.save && @person.save
    	flash[:message] = 'User successfully created. Login, please.'
    	redirect_to  :action => 'login', :username => params[:user][:username]
    else
    	flash[:error] = "An error occurred."
    	redirect_to :action => 'new', :username => params[:username]
    end
    
  end
  
  
  
end
