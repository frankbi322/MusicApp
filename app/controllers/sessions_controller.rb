class SessionsController < ApplicationController


  def create
    user = User.find_by_credentials(
                                    session_params[:email],
                                    session_params[:password]
                                   )
    if user
      login(user)
      redirect_to user_url(user)
    else
      render :new
    end
  end

  def destroy
    logout!
    redirect_to new_session_url
  end

  def new
    render :new
  end

  private

  def session_params
    params.require(:user).permit(:email,:password)
  end
end
