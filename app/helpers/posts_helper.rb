module PostsHelper

  def userWithTopComment
    top_comments = 0
    top_user = nil
    User.all.each do |user|
      if user.comments.length > top_comments
        top_user = user
        top_comments = user.comments.length
      end
    end
    "#{top_user.first_name} #{top_user.last_name} (#{top_comments})"
  end

  def mostUsedTags
    if Tag.all.length > 0
      all_tags = {}
      Tag.all.each do |tag|
        all_tags[tag.name] = tag.posts.length
      end
      top_tags = []
      5.times do
        tag_name = all_tags.select { |key, value| value == all_tags.values.max }.keys[0]
        top_tags << tag_name
        all_tags.delete(tag_name)
      end

      string = top_tags[0]
      top_tags[1..].each { |tag| string += ", #{tag}" if tag}
      string
    else
      "No tags"
    end
  end

  def longestPost
    top_length = 0
    top_post = nil
    Post.all.each do |post|
      if post.content.length > top_length
        top_post = post
        top_length = post.content.length
      end
    end
    top_post.title
  end

end
