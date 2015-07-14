class SessionsController < ApplicationController
  def create
  @user = User.find_by(email: user_params[:email])

  if @user.authenticate(user_params[:password])
    login!(@user)
    redirect_to @user
  else
    redirect_to new_session_url
  end
end

def destroy
  logout!
  redirect_to new_session_url
end

private
def user_params
  params.require(:user).permit(:email, :password)
end
end
