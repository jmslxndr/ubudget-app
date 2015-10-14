class UsersController < ApplicationController

	def index
		@user = User.all
	end

	def dashboard
	end
end
