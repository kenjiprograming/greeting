require 'test_helper'

class GreetsControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get greets_hello_url
    assert_response :success
  end

end
