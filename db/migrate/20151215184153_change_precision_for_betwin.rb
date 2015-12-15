class ChangePrecisionForBetwin < ActiveRecord::Migration
  def change
  	change_table :records do |t|
	  t.change :bet, :decimal, :precision => 8, :scale => 2
	  t.change :win, :decimal, :precision => 8, :scale => 2
	end
  end
end
