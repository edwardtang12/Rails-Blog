require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "about route works" do
    get about_path
    assert_response :success
  end

end
