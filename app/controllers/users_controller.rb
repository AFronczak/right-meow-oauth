class UsersController < ApplicationController
  def edit
    @user = current_user
    @pets = @user.pets
  end

  def update
    @user = current_user

    if @user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

protected
  def user_params
    params.require(:user).permit(:name, :phone, :address, :nickname)
  end
end
