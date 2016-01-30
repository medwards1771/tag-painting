class Tag < ActiveRecord::Base
  belongs_to :painting
  validates_length_of :text, maximum: 15
end
