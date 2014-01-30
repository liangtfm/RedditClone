class LinksController < ApplicationController

  def new
  end

  def create
    @link = Link.new(params[:link])
    @link.user_id = current_user.id

    if @link.save
    else
    end
  end

  def index

  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
