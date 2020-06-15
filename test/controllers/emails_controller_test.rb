require 'test_helper'

class EmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get unsubscribe" do
    get emails_unsubscribe_url
    assert_response :success
  end

end
