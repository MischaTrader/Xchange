class CreateExchangeRates < ActiveRecord::Migration

def up
    create_table :exchangerates do |t|
      # id colomn wordt default gegenereerd!
      t.integer "from_currency_id"
      t.integer "to_currency_id"
      t.decimal "rate", :limit => 8, :null => false
     
     t.timestamps
      # t.datetime "created_at"
      # t.datetime "updated_at"
    end
    add_index("exchangerates", "from_currency_id")
    add_index("exchangerates", "to_currency_id")
  end

  def down
    drop_table :exchangerates
  end

end
