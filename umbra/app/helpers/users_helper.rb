module UsersHelper
	def current_user
		@user = User.where(params[:phone]).first
	end
end
