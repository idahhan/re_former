class UsersController < ApplicationController
  
  def index
    @users= User.all
  end

  def show
    @user= User.find(params[:id])
  end
  def new
    @user=User.new
  end 

  def create
    @user=User.new(user_param)

    if @user.save
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])

    if @user.update(user_param)
      redirect_to new_user_path
    else
      render :edit
    end

  end

  private

  def user_param
    params.require(:user).permit(:username,:email,:password)
  end
  
end
