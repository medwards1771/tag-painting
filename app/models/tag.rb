class Tag < ActiveRecord::Base
  belongs_to :painting
  validates :text, presence: true
  validates :text, uniqueness: true
  validates_length_of :text, maximum: 15
end
