class PaintingTag < ActiveRecord::Base
  belongs_to :painting 
  belongs_to :tag
end
