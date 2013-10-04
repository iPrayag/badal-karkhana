class User
  include Mongoid::Document
  field :firstName, type: String
  field :lastName, type: String
  field :contactNo, type: String
end
