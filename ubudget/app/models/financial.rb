class Financial < ActiveRecord::Base
	belongs_to :user


	def credits
		total = wage || 0
		total += investments || 0
		total += interest || 0
		total += misc_income || 0
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
	end

end
