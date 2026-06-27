class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new; end

  def create
    @user = User.find_by(user_name: params[:user_name])&.authenticate(params[:password])

    if @user
      session[:user_id] = @user.id
      redirect_to root_path, success: t(".success")
    else
      flash.now[:danger] = t(".failure")
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    logout
    redirect_to root_path, success: t(".success"), status: :see_other
  end
end
