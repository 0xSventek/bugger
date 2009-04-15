require File.dirname(__FILE__) + '/../test_helper'
require 'ticket_tag_controller'

# Re-raise errors caught by the controller.
class TicketTagController; def rescue_action(e) raise e end; end

class TicketTagControllerTest < Test::Unit::TestCase
  def setup
    @controller = TicketTagController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
