class FinancialsController < ApplicationController

	def index
		@financials = Financial.all
	end

	def create
		@financial.new
		if @financial.save
			respond_to do |format|
				format.html {redirect_to 'users/dashboard' }
				format.js
			end
		else
			respond_to do |format|
				format.html {redirect_to 'users/dashboard', notice: "There was a problem creating your table."}
				format.js
			end
		end		
	end

	def update
		if @financial.update(financial_params)	
			respond_to do |format|
				format.html {redirect_to 'users/dashboard'}
				format.js
			end	
		else
			respond_to do |format|
				format.html {redirect_to 'users/dashboard', notice: "There was a problem updating your finances."}
				format.js
			end	
		end
	end

	def destroy
	end

	def new
		@financial = Financial.new
	end

	private

	def financial_params
		params.require(:financial).permit(:rent, :home_maintenance, :electricity, :water, :gas_oil, :phone, :food, :insurance, :car_payment, :gas, :car_insurance, :credit_cards, :student_loan, :other_loans, :misc_expenses)
	end
	
end
