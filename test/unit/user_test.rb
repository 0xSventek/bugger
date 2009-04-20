require File.dirname(__FILE__) + '/../test_helper'

class UserTest < Test::Unit::TestCase
  fixtures :users

  # Replace this with your real tests.
  def test_truth
    assert true
  end
  
  def test_unique_username
  	@user_a = users(:user_01)
  	@user_b = users(:user_02)
  	
  end
  
end
