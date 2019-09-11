# frozen_string_literal: true

module PostsHelper
  def post_author(post)
    post.user.name if current_user
  end
end
