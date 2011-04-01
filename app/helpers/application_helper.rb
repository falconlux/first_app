module ApplicationHelper
  def logo
    image_tag("logo.png",:alt => "First app",:class=>"round")
  end
end
