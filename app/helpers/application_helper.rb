module ApplicationHelper

  def login_helper style =" "
     if current_user
      link_to 'Logout', destroy_user_session_path,method: :delete ,class: style
     else
      (link_to 'signup',new_user_registration_path ,class: style) + 
      " ".html_safe +
      (link_to 'Login',user_session_path ,class: style)
    end
  end

  def source_helper
    if session[:source]
      greeting = "Thanks for visiting us from #{session[:source]}"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

end
