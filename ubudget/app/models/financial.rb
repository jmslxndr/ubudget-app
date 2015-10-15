class Financial < ActiveRecord::Base
	belongs_to :user


	def credits
		total = wage || 0
		total += investments || 0
		total += interest || 0
		total += misc_income || 0
		total += other_income1 || 0
		total += other_income2 || 0
		total += spouse_income || 0
	end

	def expenses
		total = rent || 0
		total += home_maintenance || 0
		total += electricity || 0
		total += water || 0
		total += gas_oil || 0
		total += phone || 0
		total += food || 0
		total += insurance || 0
		total += car_payment || 0
		total += gas || 0
		total += car_insurance || 0
		total += credit_cards || 0
		total += student_loan || 0
		total += other_loans || 0
		total += misc_expenses || 0
		total += second_mortgage || 0
		total += auto_repairs || 0
		total += other_auto || 0
		total += dining_out || 0
		total += dental_insurance || 0
		total += home_improvement || 0
		total += dry_cleaning || 0
		total += laundry || 0
		total += childcare || 0
		total += cable || 0
		total += travel || 0
		total += internet || 0
		total += computer_costs || 0
		total += baby_costs || 0
		total += other_expenses1 || 0
		total += other_expenses2 || 0
		total += other_expenses3 || 0
		total += life_insurance || 0
		total += home_insurance || 0
		total += entertainment || 0
	end

	def savings
		total = emergency_savings || 0
		total += college_savings || 0
		total += retirement_savings || 0
		total += other_savings || 0
	end

end
