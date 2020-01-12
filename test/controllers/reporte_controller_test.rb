require 'test_helper'

class ReporteControllerTest < ActionDispatch::IntegrationTest
  test "should get upload" do
    get reporte_upload_url
    assert_response :success
  end

end
