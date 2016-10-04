module ApplicationHelper
  def navbar_footer_class
    logged_in? ? "navbar-bottom" : "navbar-fixed-bottom"
  end

  def body_class
    logged_in? ? "logged-in" : "logged-out"
  end
end
