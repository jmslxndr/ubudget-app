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


	def credits_to_datum
		# [{"label": "Four", "value" : 196.45946739256}]
		data = []
		data << {label: "Wage", value: wage.to_f}
		data <<	{label: "Investments", value: investments.to_f}
		data << {label: "Interest", value: interest.to_f}
		data << {label: "Misc Income", value: misc_income.to_f}
		data << {label: "Other Income 1", value: other_income1.to_f}
		data << {label: "Other Income 2", value: other_income2.to_f}
		data << {label: "Spouse Income", value: spouse_income.to_f}
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

	def expenses_to_datum
		# [{"label": "Four", "value" : 196.45946739256}]
		data = []
		data << {label: "Rent", value: rent.to_f}
		data <<	{label: "Home Maintenance", value: home_maintenance.to_f}
		data << {label: "Electricity", value: electricity.to_f}
		data << {label: "Water", value: water.to_f}
		data << {label: "Gas/Oil", value: gas_oil.to_f}
		data << {label: "Phone", value: phone.to_f}
		data << {label: "Food", value: food.to_f}
		data << {label: "Insurance", value: insurance.to_f}
		data << {label: "Car Payment", value: car_payment.to_f}
		data << {label: "Gas", value: gas.to_f}
		data << {label: "Car Insurance", value: car_insurance.to_f}
		data << {label: "Credit Cards", value: credit_cards.to_f}
		data << {label: "Student Loan", value: student_loan.to_f}
		data << {label: "Other Loans", value: other_loans.to_f}
		data << {label: "Misc. Expenses", value: misc_expenses.to_f}
		data << {label: "Second Mortgage", value: second_mortgage.to_f}
		data << {label: "Auto Repairs", value: auto_repairs.to_f}
		data << {label: "Other Auto", value: other_auto.to_f}
		data << {label: "Dining Out", value: dining_out.to_f}
		data << {label: "Dental Insurance", value: dental_insurance.to_f}
		data << {label: "Home Improvement", value: home_improvement.to_f}
		data << {label: "Dry Cleaning", value: dry_cleaning.to_f}
		data << {label: "Laundry", value: laundry.to_f}
		data << {label: "Childcare", value: childcare.to_f}
		data << {label: "Cable", value: cable.to_f}
		data << {label: "Travel", value: travel.to_f}
		data << {label: "Internet", value: internet.to_f}
		data << {label: "Computer Costs", value: computer_costs.to_f}
		data << {label: "Baby Costs", value: baby_costs.to_f}
		data << {label: "Other Expenses 1", value: other_expenses1.to_f}
		data << {label: "Other Expenses 2", value: other_expenses2.to_f}
		data << {label: "Other Expenses 3", value: other_expenses3.to_f}
		data << {label: "Life Insurance", value: life_insurance.to_f}
		data << {label: "Home Insurance", value: home_insurance.to_f}
		data << {label: "Entertainment", value: entertainment.to_f}
	end

	def savings
		total = emergency_savings || 0
		total += college_savings || 0
		total += retirement_savings || 0
		total += other_savings || 0
	end

	def savings_to_datum
		# [{"label": "Four", "value" : 196.45946739256}]
		data = []
		data << {label: "Emergency Savings", value: emergency_savings.to_f}
		data <<	{label: "College Savings", value: college_savings.to_f}
		data << {label: "Retirement Savings", value: retirement_savings.to_f}
		data << {label: "Other Savings", value: other_savings.to_f}
	end

end
