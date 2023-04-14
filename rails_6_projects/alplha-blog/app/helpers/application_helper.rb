module ApplicationHelper
  def gravatar_for(user, options = {size: 80})
  email_address = user.email.downcase
  gravatar_hash = Digest::MD5.hexdigest(email_address)
  size = options[:size]
  gravatar_url = "https://www.gravatar.com/avatar/#{gravatar_hash}?s=#{size}"
  image_tag(gravatar_url, alt: user[:name], class: "rounded shadow mx-auto block")
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def logged_in?
    !!current_user
  end
end
