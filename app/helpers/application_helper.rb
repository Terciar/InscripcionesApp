module ApplicationHelper
  def badge_registrations(count)
    case count
    when 0..5
     @content = tag(:span, class: "badge alert-warning")
    when 5..25
      #verde
      @content = tag(:span, class: "badge alert-success")
    when 25..50
      #verde
      @content = tag(:span, class: "badge alert-danger")
    else
      #default
      @content = tag(:span, class: "badge")
    end
  end
end
