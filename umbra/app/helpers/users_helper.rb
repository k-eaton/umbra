module UsersHelper
	def current_user
	
		@user = User.where(phone: params["user"]["phone"]).first
		
	end
	
end
