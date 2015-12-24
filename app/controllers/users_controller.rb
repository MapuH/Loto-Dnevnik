class UsersController < ApplicationController
  
  before_action :authenticate_user!, only: [:show]

  def show
    @user = current_user
    @records = @user.records
    @results = Array.new

    @records.each do |record|
      @results << (record.win - record.bet)
    end
  end

  def show_record
    @user = current_user
    @record = @user.records.find(params[:record_id])
  end

  def destroy_record
    @user = current_user
    @record = @user.records.find(params[:record_id])
    @record.destroy
    redirect_to profile_path
  end
end
