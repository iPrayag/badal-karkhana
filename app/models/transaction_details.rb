/**
  * @author prayagupd
  * @since  2013.10.01
  */

class TransactionDetails < ActiveRecord::Base
  attr_accessible :transaction, 
                  :user,
	          :amount, 
                  :debit,
		  :created
  validates :amount, allow_blank: false
end
