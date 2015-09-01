module UsersHelper
	def current_user
		@user = User.find(params[:id])
	end
end
