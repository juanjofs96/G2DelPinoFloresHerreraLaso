require 'test_helper'

class InscripcionesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get inscripciones_index_url
    assert_response :success
  end

end
