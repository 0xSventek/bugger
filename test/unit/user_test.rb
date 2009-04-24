require File.dirname(__FILE__) + '/../test_helper'

class UserTest < Test::Unit::TestCase
  fixtures :users

  # Replace this with your real tests.
  def test_truth
    assert true
  end
  
  def test_unique_username
  	user_a = users(:user_01)
  	user_b = users(:user_02)
  	
  	assert !user_b.valid?
  	assert_equal 'Username taken.', user_b.errors.on(:username)
  	
  end
  
  def test_password
  	ok = %w{ password }
  	bad = %w{ foo foofoofoofoofoofoofoofoofoofoofoofoofoofoo }
  	
  	# test invalid passwords
  	bad.each do |pwd|
  		user = User.new(:username => 'thisGuy', :password => pwd, :password_confirmation => pwd)
  		assert !user.valid?, "trying #{pwd}"
  	end
  	
  	# test valid password(s)
  	ok.each do |pwd|
  		user = User.new(:username => 'thisGuy', :password => pwd, :password_confirmation => pwd)
  		assert user.valid?
  	end
  	
  	# test unconfirmed password(s)
  	user = User.new(:username => 'thisGuy', :password => 'password', :password_confirmation => '')
  	assert !user.valid?, "trying unconfirmed"
  	
  end
  
end
