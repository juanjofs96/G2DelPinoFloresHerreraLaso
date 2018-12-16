require 'test_helper'

class NoticiasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get noticias_index_url
    assert_response :success
  end

end
