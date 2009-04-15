class Person < ActiveRecord::Base

	belongs_to 	:user, :foreign_key => :username
	has_many		:ticket_comments
	
	has_many		:tickets

	validates_uniqueness_of :username, :message => 'Username taken.'
	validates_uniqueness_of :email, :message => 'Email taken.'
	
	validates_presence_of :first_name, :message => 'First Name missing.'
	validates_presence_of :last_name, :message => 'Last Name missing.'
	validates_presence_of :email, :message => 'Email missing.'
	validates_presence_of :username, :message => 'Username missing.'
end
