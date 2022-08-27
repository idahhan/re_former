class UsersController < ApplicationController

  def new
    @user=User.new
  end 

  def create
    @user=User.new(user_param)

    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_param
    params.require(:user).permit(:username,:email,:password)
  end
  
end