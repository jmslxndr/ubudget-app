class UsersController < ApplicationController
	before_action :authenticate_user!, only: [:dashboard]

	def index
		@users = User.all
	end


	def dashboard
		@financial = current_user.financial
	end

	def destroy
		if current_user
			current_user.destroy
			session[:user_id] = nil
			redirect_to home_path, notice: "Your account has been deleted."
		end
	end
end
