FactoryGirl.define do
		factory :financial do
			# Income
			wage "4000"
			interest	"500"
			investments "6000"
			misc_income "500"
			# Expenses
			rent "2000"
			home_maintenance "200"
			electricity "400"
			water	"500"
			gas_oil	"200"
			phone	"100"
			food	"800"
			insurance "450"
			car_payment	"400"
			gas "350"
			car_insurance "250"	
			credit_cards "75"
			student_loan "300"
			other_loans	"0"
			misc_expenses	"100"	
		end
end