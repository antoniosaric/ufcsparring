class HomeController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

  def index 
    @users = User.all.order("created_at DESC")
    @meetings = Meeting.all
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private

    def find_user
      @user = User.find(params[:id])
    end

end
