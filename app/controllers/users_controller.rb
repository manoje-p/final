class UsersController < ApplicationController

  def index
    @users=User.all
  end


  def show
    @users=User.find_by(id: params["id"])
  end

  def new
    @users=User.new
  end

  def create
    User.create(params["user"])
    redirect_to users_url
  end

end