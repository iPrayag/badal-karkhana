class Video
  include Mongoid::Document
  field :name, type: String
  field :active, type: Boolean
end
