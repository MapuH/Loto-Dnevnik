class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.references :user, index: true, foreign_key: true

      t.string :lottery
      t.string :game
      t.integer :bet
      t.integer :win

      t.timestamps null: false
    end
  end
end
