class UsersController < ApplicationController
  
  before_action :authenticate_user!

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

  def create_record
    @user = current_user
    @record = @user.records.new(record_params)
    redirect_to profile_path if @record.save
  end

  def update_record
    @user = current_user
    @record = @user.records.find(params[:record_id])
    if @record.update_attributes(record_params)
      redirect_to(action: "show_record", record_id: @record.id)
    end
  end

  def destroy_record
    @user = current_user
    @record = @user.records.find(params[:record_id])
    @record.destroy
    redirect_to profile_path
  end

  private
  def record_params
    params.require(:record).permit(:lottery, :game, :bet, :win)
  end
end
