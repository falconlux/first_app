module PagesHelper
  def title
    "First App|"+@title
  end
  
  def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
end
