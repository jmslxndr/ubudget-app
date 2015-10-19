class UsersController < ApplicationController
	before_action :authenticate_user!, only: [:dashboard]

	def index
		@users = User.all
	end

	def dashboard
		@financial = current_user.financial
	end

end
