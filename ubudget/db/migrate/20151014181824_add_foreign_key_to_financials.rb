class AddForeignKeyToFinancials < ActiveRecord::Migration
  def change
    add_column :financials, :user_id, :integer
  end
end
