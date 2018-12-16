require 'test_helper'

class ContactenosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contactenos_index_url
    assert_response :success
  end

end
