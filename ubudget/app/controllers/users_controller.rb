class UsersController < ApplicationController
	before_action :authenticate_user!, only: [:dashboard]
	before_action :set_financial, only: [:dashboard, :index]

	def index
		@users = User.all
	end


	def dashboard
	end

	private

	def set_financial
		@financial = current_user.financial
	end

end
