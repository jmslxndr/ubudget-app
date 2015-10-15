class AddOtherBillsToFinancials < ActiveRecord::Migration
  def change
    add_column :financials, :second_mortgage, :decimal
    add_column :financials, :auto_repairs, :decimal
    add_column :financials, :other_auto, :decimal
    add_column :financials, :dining_out, :decimal
    add_column :financials, :dental_insurance, :decimal
    add_column :financials, :home_improvement, :decimal
    add_column :financials, :dry_cleaning, :decimal
    add_column :financials, :laundry, :decimal
    add_column :financials, :childcare, :decimal
    add_column :financials, :cable, :decimal
    add_column :financials, :travel, :decimal
    add_column :financials, :internet, :decimal
    add_column :financials, :computer_costs, :decimal
    add_column :financials, :baby_costs, :decimal
    add_column :financials, :other_expenses1, :decimal
    add_column :financials, :other_expenses2, :decimal
    add_column :financials, :other_expenses3, :decimal
    add_column :financials, :other_income1, :decimal
    add_column :financials, :other_income2, :decimal
    add_column :financials, :spouse_income, :decimal
    add_column :financials, :life_insurance, :decimal
    add_column :financials, :home_insurance, :decimal
    add_column :financials, :emergency_savings, :decimal
    add_column :financials, :college_savings, :decimal
    add_column :financials, :retirement_savings, :decimal
    add_column :financials, :other_savings, :decimal
    add_column :financials, :entertainment, :decimal
  end
end
