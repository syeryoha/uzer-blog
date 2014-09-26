class UsersController < ApplicationController
	
	def destroy
		if current_user.admin?
			user = User.find(params[:id])
			user.delete 
		end
		redirect_to root_url
	end
	
	
	
end
