class UsermeetingsController < ApplicationController
    def index
      @usermeetings = Usermeeting.all
    end


  def destroy
    @usermeeting.destroy
    respond_to do |format|
      format.html { redirect_to meetings_url, notice: 'Meeting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def create
    Usermeetings.create(
      meeting_id: params['join']['meeting_id'],
      user_id: params['join']['user_id'])
  end
end
