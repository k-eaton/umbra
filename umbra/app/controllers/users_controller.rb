class UsersController < ApplicationController
	include UsersHelper
	def index
	end
	

	def create
	
		@user = User.new(user_params)
		@user.subscribed = true
		if @user.save 
			p @user
			p current_user
			render 'users/show'
		else current_user 
				if @user.preference == nil
				 current_user
				 render 'users/show'
				else
				current_user
				render 'users/edit'
				end
		end
	end

	def edit
		current_user
		if @user.preference == nil
			render 'users/show'
		elsif @user.preference != nil
		current_user
	end
	end
	def show
		current_user
		if @user.preference != nil
			render 'users/edit'
		else @user.preference == nil
			current_user
		end
	end
	private
	def user_params
		params.require(:user).permit(:phone)
	end
end