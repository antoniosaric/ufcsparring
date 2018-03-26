class Users::RegistrationsController < Devise::RegistrationsController
   before_filter :configure_permitted_parameters

  def index
    @user = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login
      flash.notice = "Thanks for registering '#{@user.username}'!!!!"
      redirect_to 'user#show'
    else
      flash.notice = "We were unable to sign you up... please try again."
      redirect_to '/users/new'
    end
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end

  private

  def user_params
     params.require(:user).permit(:email, :username, :password, :image, :experience, :password, :password_confirmation)
  end

 def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
   user_params.permit(:username, :image, :experience, :email, :password, :password_confirmation)
  end
  devise_parameter_sanitizer.permit(:account_update) do |user_params|
   user_params.permit(:username, image:, :experience, :email, :password, :password_confirmation)
  end
 end

end