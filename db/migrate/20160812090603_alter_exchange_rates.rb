class AlterExchangeRates < ActiveRecord::Migration
  
  def up
    rename_table("exchangerates", "exchange_rates")
  end
  
  def down
    rename_table("exchange_rates", "exchangerates")
  end
  
end

#migratie is alleen het verschil tov vorige situatie!
#naam migratie geeft aan wat het verschil is, kies juiste tenaamstelling!