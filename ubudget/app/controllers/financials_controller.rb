class FinancialsController < ApplicationController
	before_action :set_financial, only: [:update, :edit]

	def index
		@financials = Financial.all
	end

	def edit
	end

	def new
		@financial = Financial.new
	end

	def update
		@financial.update(financial_params)	
		redirect_to dashboard_path
	end

	private

	def financial_params
		params.require(:financial).permit(:wage, :interest, :investments, :misc_income, :rent, :home_maintenance, :electricity, :water, :gas_oil, :phone, :food, :insurance, :car_payment, :gas, :car_insurance, :credit_cards, :student_loan, :other_loans, :misc_expenses)
	end

	def set_financial
		@financial = Financial.find(params[:id])
	end
	
end
