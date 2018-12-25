class UsersController < ApplicationController


  # get '/Users/:id'
  def show
    @user = User.find(params[:id])
    # render :show
  end

  def new
    @user = User.new
    render :new
  end

  # def colored_hair
  #   @user = User.find(params[:id])
  #   @user.update_attribute(hair_color: params)
  #   redirect_to @user
  # end

  def create
    @user = User.create(user_params)
    if @user.valid?
      flash[:success] = "Welcome #{@user.user_name}"
      redirect_to @user
    else
      # byebug
      flash[:errors] = @user.errors.full_messages
      # byebug
      # @errors = @user.errors.full_messages
      # render :new
      redirect_to new_user_path
    end
  end

  def update
    @user.update(update_user_params)
  end



  private

  # 💪 strong params
  def user_params
    params.require(:user).permit(:user_name, :email, :age)
  end
  # 💪 strong params
  def update_user_params
    params.require(:user).permit(:user_name,:email)
  end

end # end UsersController class
