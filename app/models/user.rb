class User < ActiveRecord::Base
  attr_accessible :firstName, 
	          :lastName, 
		  :contactNo
  validates :firstName, length: {minimum: 3, maximum: 255}, allow_blank: false
end
