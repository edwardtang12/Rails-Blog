module PostsHelper
  def truncateString(string)
    if string.length > 250
      "#{string[0..249]} ..."
    else
      string
    end
  end

  def returnDate(post)
    post.created_at.strftime("%B %-d, %Y")
  end
end
