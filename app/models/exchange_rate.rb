class ExchangeRate < ActiveRecord::Base

       belongs_to :from_currency, :class_name => "Currency", :foreign_key => "from_currency_id" 
       belongs_to :to_currency, :class_name => "Currency", :foreign_key => "to_currency_id" 
             
        validates_presence_of :from_currency_id
        validates_length_of :from_currency_id, :is => 3
        validates_presence_of :to_currency_id
        validates_length_of :to_currency_id, :is => 3
        validates_presence_of :rate
        validates_length_of :to_currency_id, :maximum => 9
        
        # use presence_of with length_of to disallow spaces
        #validates_uniqueness_of :permalink
        # for unique values by subject use ":scope => :subject_id"
       
       #scope :visible, lambda { where(:visible => true) }
       #scope :invisible, lambda { where(:visible => false) }
       #scope :sorted, lambda { order("exchangerates.position ASC") }
       #scope :newest_first, lambda { order("exchangerates.created_at DESC")}
      
 end
