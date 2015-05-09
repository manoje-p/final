class GuestsController < ApplicationController
	def index
    @guest=Guest.all
  end
  def show
    @guest=Guest.find_by(id: params["id"])
  end

  def new
    @guest=Guest.new
  end

  def create
    Guest.create(params["guest"])
    redirect_to actors_url
  end

  def edit
    @guest=Guest.find_by(id: params["id"])
  end

  def update
    @guest=Guest.find_by(id: params["id"])
    @aguest.update(params["guest"])
    redirect_to guests_url
  end

  def destroy
    @guest=Guest.find_by(id: params["id"])
    @guest.delete
    redirect_to guests_url
  end

end
end