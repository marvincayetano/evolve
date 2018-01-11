module ApplicationHelper

  def full_title(page_title = '')
    base_title = "Evotech Software Solutions"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def navbar_color
    if user_signed_in?
      "navbar-inverse".html_safe
    else
      "navbar-default".html_safe
    end
  end

  def cp(path)
    "current-nav" if current_page?(path)
  end
end
