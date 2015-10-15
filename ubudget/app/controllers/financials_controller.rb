class FinancialsController < ApplicationController

	def index
		@financials = Financial.all
	end

	def edit
		@financial = Financial.find(params[:id])
	end

	def new
		@financial = Financial.new
	end

	def create
		@financial = Financial.create(financial_params)
		redirect_to dashboard_path
	end

	def update
		@financial.update(financial_params)	
		redirect_to dashboard_path
	end

	private

	def financial_params
		params.require(:financial).permit(:rent, :home_maintenance, :electricity, :water, :gas_oil, :phone, :food, :insurance, :car_payment, :gas, :car_insurance, :credit_cards, :student_loan, :other_loans, :misc_expenses)
	end
	
end
