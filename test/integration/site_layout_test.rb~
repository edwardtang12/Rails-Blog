require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "blog title is correct" do
    get root_path
    assert_select "title", "Tang Dynasty Blog"
  end

  test "index should be root" do
    assert_recognizes({controller: "posts", action: "index"}, root_path)
  end

  test "navigation has about link" do
    get root_path
    assert_template root_path
    assert_select "a[href=?]", about_path
  end

  test "footer has current year" do
    get root_path
    assert_select ".date", "© #{Date.current.year}"
  end

end
