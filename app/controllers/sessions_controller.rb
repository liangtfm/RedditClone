class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_crendentials(
                                params[:user][:username],
                                params[:user][:password]
                                )

      if @user
        sign_in(@user)
        redirect_to #somewhere
      else
        flash.now[:errors] = "Incorrect user/password combo"
        render :new
      end
  end

  def destroy
    current_user.reset_token!
    session[:session_token] = nil
    render :new
  end

end
