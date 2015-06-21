class CreatInvestorsTable < ActiveRecord::Migration
  def change
  	 create_table :investors do |t|
	  t.integer :year_date
      t.string :name
      t.string :invest_type
      t.string :invested_name
      t.integer :amount
      t.string :industry
      t.string :note

      t.timestamps
  	end
  end
end
