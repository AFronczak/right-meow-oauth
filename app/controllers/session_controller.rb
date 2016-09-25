class SessionController < ApplicationController
  # logging in
  def new
  end

  # handle the post from the login page
  def create
    self.current_user = User.from_omniauth(request.env['omniauth.auth'])

    if current_user
      if current_user.pets.empty?
        redirect_to edit_user_path(current_user.id)
      else
        redirect_to root_path
      end
    else
      redirect_to login_path
    end
  end

  # logout
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  # Show the failure page
  def failure
    # TODO, create failure.html.erb
  end
end
