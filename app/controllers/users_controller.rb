class UsersController < ApplicationController
	def show
		@user = current_user
		@records = @user.records
	end
end
