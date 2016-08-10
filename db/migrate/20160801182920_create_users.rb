class CreateUsers < ActiveRecord::Migration
  
  def up
    create_table :users do |t|
      # id colomn wordt default gegenereerd!
      t.string "first_name", :limit => 255, :null => false
      t.string "last_name",  :limit => 255, :null => false
      t.string "email", :limit => 255, :null => false 
      t.string "password", :limit => 255, :null => false
      
      t.timestamps
      # t.datetime "created_at"
      # t.datetime "updated_at"
    end
  end

  def down
    drop_table :users
  end

end

