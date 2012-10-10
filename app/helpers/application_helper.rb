module ApplicationHelper

  def complete_title(title)
  	base_title = "Pholder"
  	if title.empty?
  	  base_title
  	else
  	  "#{base_title} | #{title}"
  	end
  end

  def user_name(user)
  	if current_user == user
  	  "Your"
  	else
  	  "#{user.name}'s"
  	end
  end

  def profilepic?
    if self.profilepic != nil
      true
    else
      false
    end
  end

end
