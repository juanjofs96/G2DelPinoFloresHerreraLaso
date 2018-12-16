require 'test_helper'

class PreguntasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get preguntas_index_url
    assert_response :success
  end

end
