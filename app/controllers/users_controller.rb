class UsersController < ApplicationController

  def index
    @users = User.all

    @user = User.new
  end

  def create
    ImportUserJob.set(wait: 1.minutes).perform_later(user_params)
  end

  def user_params
    params.require(:user).permit(:name, :full_name, :phone, :sex, :address, :email, :password)
  end
end
