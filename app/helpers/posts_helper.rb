# frozen_string_literal: true

module PostsHelper
  def post_author(p)
    if current_user
      p.user.name
    end
  end
end
