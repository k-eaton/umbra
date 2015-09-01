class UsersController < ApplicationController
	include UsersHelper
	def index
	end
	

	def create
		@user = User.new(user_params)
		@user.subscribed = true
		if @user.save && @user.type == nil
			current_user
			render 'users/show'
		else
			 current_user
			render 'users/edit'
		end
	end

	def edit
		current_user
		if @user.type == nil
			render 'users/show'
		elsif @user.type != nil
		current_user
	end
	end
	def show
		current_user
		if @user.type != nil
			render 'users/edit'
		else @user.type == nil
			current_user
		end
	end
	private
	def user_params
		params.require(:user).permit(:phone)
	end
end