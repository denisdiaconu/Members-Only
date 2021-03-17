module PostsHelper
  def post_info(post)
    if user_signed_in?
      content_tag(:div) do
        content_tag(:p, post.user.email) +
          content_tag(:p, post.title) +
          content_tag(:p, post.body)
      end
    else
      content_tag(:div) do
        content_tag(:p, post.title) +
          content_tag(:p, post.body)
      end
    end
  end

  def user_sessions
    if user_signed_in?
      content_tag(:div) do
        (button_to 'sign out', destroy_user_session_path, method: :delete) +
          (link_to 'new post', new_post_path, method: :delete)
      end
    else
      (button_to 'sign in', new_user_session_path) +
        (link_to 'sign up', new_user_registration_path)
    end
  end
end
