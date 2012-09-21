module ApplicationHelper

  def complete_title(title)
  	base_title = "Pholder"
  	if title.empty?
  	  base_title
  	else
  	  "#{base_title} | #{title}"
  	end
  end

end
