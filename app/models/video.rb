class Video
  include Mongoid::Document
  field :name, type: String
  field :status, type: Boolean
end
