class ChangeDataTypeForBetwin < ActiveRecord::Migration
  def change
  	change_table :records do |t|
	  t.change :bet, :decimal
	  t.change :win, :decimal
	end
  end
end
