module SessionsHelper

  def sign_in(user)
  	self.current_user = user
  end

  def log_in(user)
    self.current_user = user
    cookies.permanent[:remember_token] = user.remember_token
  end

  def signed_in?
  	!current_user.nil?
  end

  def sign_out
    self.current_user = nil
    cookies[:remember_token] = nil
  end

  def current_user=(user)
  	@current_user = user
  end

  def current_user
  	@current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end
end
