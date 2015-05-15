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
    Guest.create(params["guest"])
    redirect_to guests_url
  end

  def edit
    @guests=Guest.find_by(id: params["id"])
  end

  def destroy
    @guests=Guest.find_by(id: params["id"])
    @guests.delete
    redirect_to guests_url
  end

end