class UsersController < ApplicationController

  def index
    @users=User.all
  end


  def show
    @users=User.find_by(id: params["id"])
    Guest.create(params["guest"])
    @guests=Guest.new
   
  end

  def new
    @user=User.new
  end

  def create
    @user=User.create(params["user"])
    redirect_to user_url(@user)
  end

end