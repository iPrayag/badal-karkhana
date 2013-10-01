/**
  * @author prayagupd
  * @since  2013.10.01
  */

class Transaction < ActiveRecord::Base
  attr_accessible :initiatedFrom, 
	          :amount, 
		  :created
  validates :amount, allow_blank: false
end
