helpers do

  def login
    user = User.find_by(first_name: params[:first_name])
    session[:user_id] = user.id
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def logout
    session.clear
  end

end
