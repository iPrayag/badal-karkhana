/**
  * @author prayagupd
  * @since  2013.07.07
  */

class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :firstName, type: String
  field :lastName, type: String
  field :contactNo, type: String
end
