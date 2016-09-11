class Currency < ActiveRecord::Base

  has_many :exchange_rates
     
  #scope :visible, lambda { where(:visible => true) }
  #scope :invisible, lambda { where(:visible => false) }
  #scope :sorted, lambda { order("currencies.position ASC") }
  #scope :newest_first, lambda { order("currencies.created_at DESC")}
  #scope :search, lambda {|query|
  #  where(["name LIKE ?", "%#{query}%"])
  #}

end
