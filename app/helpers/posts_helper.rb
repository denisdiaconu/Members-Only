module PostsHelper
  def post_info(post)
    if user_signed_in?
      content_tag(:div, class: 'list-group-item test  text-center list-group-item-action list-group-item-secondary') do
        content_tag(:p, post.user.email, class: 'd-flex text-white') +
          content_tag(:p, post.title, class: 'h2 bg-white test8 text-uppercase') +
          content_tag(:p, post.body, class: 'bg-white test8 h-100 text-capitalize rounded')
      end
    else
      content_tag(:div, class: 'list-group-item test  text-center list-group-item-action list-group-item-secondary') do
        content_tag(:p, post.title, class: 'h2 bg-white test8 text-uppercase') +
          content_tag(:p, post.body, class: 'bg-white test8 h-100 text-capitalize rounded')
      end
    end
  end

  def user_sessions
    if user_signed_in?
      content_tag(:div, class: 'd-flex special') do
        (button_to 'sign out', destroy_user_session_path, method: :delete, class: 'btn_all bg-primary') +
          (link_to 'new post', new_post_path, method: :delete, class: 'btn_all btn_special1')
      end
    else
      (button_to 'sign in', new_user_session_path, class: 'btn_all bg-primary') +
        (link_to 'sign up', new_user_registration_path, class: 'btn_special1 btn_all')
    end
  end
end
