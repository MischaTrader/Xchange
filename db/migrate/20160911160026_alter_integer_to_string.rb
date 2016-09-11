class AlterIntegerToString < ActiveRecord::Migration
     def up
    change_column("exchange_rates", "from_currency_id", :string, :limit => 3) 
    change_column("exchange_rates", "to_currency_id", :string, :limit => 3)
  end
  
  def down
    change_column("exchange_rates", "from_currency_id", :integer, :limit => 4) 
    change_column("exchange_rates", "to_currency_id", :integer, :limit => 4)
  end
  
end