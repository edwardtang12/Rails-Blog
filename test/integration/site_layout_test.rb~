require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  setup do
    @user = users(:one)
    @category = categories(:one)
    @post = posts(:one)
  end

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

  test "valid new post" do
    get new_post_path
    assert_difference 'Post.count' do
      post posts_path, params: { post: { title: "Valid Title",
                                         content: "Valid Content",
                                         user_id: @user.id,
                                         category_id: @category.id }
      }
    end
    follow_redirect!
    assert_template 'posts/show'
  end

  test "invalid new post" do
    get new_post_path
    assert_no_difference 'Post.count' do
      post posts_path, params: { post: { title:  "", content: "" } }
    end
    assert_template 'posts/new'
  end

  test "new comment" do
    assert_difference '@post.comments.count' do
      post comments_path, params: { comment: { content: "Valid Content", user_id: @user.id, post_id: @post.id } }
    end
    follow_redirect!
    assert_template 'posts/show'
  end

end
