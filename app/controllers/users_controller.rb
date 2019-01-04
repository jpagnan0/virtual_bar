class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end


  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Virtual bar!"
      redirect_to @user
    else
      render 'new'
    end
  end

  # def update
  #   @user.update(update_user_params)
  # end



  private

  # 💪 strong params
  def user_params
    params.require(:user).permit(:user_name, :email, :age, :password, :password_confirmation)
  end
  # 💪 strong params
  # def update_user_params
  #   params.require(:user).permit(:user_name,:email)
  # end

end # end UsersController class
