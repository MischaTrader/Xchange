class CreateCurrencies < ActiveRecord::Migration
def up
    create_table :currencies do |t|
      # id colomn wordt default gegenereerd!
      t.string "name", :limit => 255, :null => false
      t.string "iso",  :limit => 3, :null => false
      
      t.timestamps
      # t.datetime "created_at"
      # t.datetime "updated_at"
    end
  end

  def down
    drop_table :currencies
  end

end