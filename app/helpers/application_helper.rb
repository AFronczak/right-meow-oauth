module ApplicationHelper
  def phone_number_link(text)
    link_to text, "tel:+1-#{text.scan(/[0-9]+/).join('-')}"
  end

  def navbar_footer_class
    logged_in? ? "navbar-bottom" : "navbar-fixed-bottom"
  end

  def body_class
    logged_in? ? "logged-in" : "logged-out"
  end
end
