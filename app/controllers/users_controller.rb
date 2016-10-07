class UsersController < ApplicationController


  def show
    # @user = User.find(params[:id]).to_i
    render :show
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user.save
      login(user)
      redirect_to user_url(user)
    else
      render :new
    end
  end

  def new
    # @user = User.new
    render :new
  end
  #
  # def destroy
  #   @user = User.find(params[:id]).to_i
  #   User.delete(:id)
  # end

  private

  def user_params
    params.require(:user).permit(:email,:password)
  end

end
