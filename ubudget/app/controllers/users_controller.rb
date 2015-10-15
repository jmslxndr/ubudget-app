class UsersController < ApplicationController
	before_action :authenticate_user!, only: [:dashboard]

	def index
		@users = User.all
	end


	def dashboard
		@financial = Financial.new
	end
end
