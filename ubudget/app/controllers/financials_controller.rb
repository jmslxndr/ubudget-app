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
		params.require(:financial).permit(:wage,:investments,:interest,:misc_income,:other_income1,:other_income2,:spouse_income,:rent,:home_maintenance,:electricity,:water,:gas_oil,:phone,:food,:insurance,:car_payment,:gas,:car_insurance,:credit_cards,:student_loan,:other_loans,:misc_expenses,:second_mortgage,:auto_repairs,:other_auto,:dining_auto,:dental_insurance,:home_improvement,:dry_cleaning,:laundry,:childcare,:cable,:travel,:internet,:computer_costs,:baby_costs,:other_expenses1,:other_expenses2,:other_expenses3,:life_insurance,:home_insurance,:entertainment,:emergency_savings,:college_savings,:retirement_savings,:other_savings)
	end

	def set_financial
		@financial = Financial.find(params[:id])
	end
	
end
