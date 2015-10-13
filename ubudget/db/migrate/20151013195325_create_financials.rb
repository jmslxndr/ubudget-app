class CreateFinancials < ActiveRecord::Migration
  def change
    create_table :financials do |t|

    	t.decimal :wage
    	t.decimal :interest
    	t.decimal :investments
    	t.decimal :misc_income 
    	t.decimal :rent 
    	t.decimal :home_maintenance
    	t.decimal :electricity
    	t.decimal :water
    	t.decimal :gas_oil
    	t.decimal :phone 
    	t.decimal :food
    	t.decimal :insurance
    	t.decimal :car_payment
    	t.decimal :gas 
    	t.decimal :car_insurance
    	t.decimal :credit_cards
    	t.decimal :student_loan 
    	t.decimal :other_loans
    	t.decimal :misc_expenses

      t.timestamps null: false
    end
  end
end
