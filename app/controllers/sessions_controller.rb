class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:email])
        session[user_id] = user.id
        flash[:success] = 'Successfully logged in!'
        redirect_to '/'
      else
        flash[:warning] = 'Invalid username of password'
        redirect_to '/login'
      end
  end

  def destroy
    session[user_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/'
  end
end
