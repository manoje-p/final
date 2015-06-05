class GuestsController < ApplicationController
  def index
    @guests=Guest.all
  end
  def show
    @guests=Guest.find_by(id: params["id"])
  end

  def new
    @guests=Guest.new
  end

  def create
    current_user.guests.create(params["guest"])
    redirect_to user_url(current_user)
  end

  def edit
    @guests=Guest.find_by(id: params["id"])
  end

  def update
    @guests = Guest.find_by(id: params["id"])
    @guests.update(params["guest"])
    redirect_to user_url(@guests.user)
  end

  def destroy
    @guests=Guest.find_by(id: params["id"])
    @guests.delete
    redirect_to user_url(@guests.user)
  end

end