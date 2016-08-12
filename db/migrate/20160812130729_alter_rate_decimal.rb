class AlterRateDecimal < ActiveRecord::Migration
   
   def up
    change_column("exchange_rates", "rate", :"decimal(8,5)") 
  end
  
  def down
    change_column("exchange_rates", "rate", :decimal, :limit => 8, :null => false)
  end
  
end