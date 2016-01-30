class Painting < ActiveRecord::Base
  has_many :painting_tags
  has_many :tags, through: :painting_tags

  def initialize(url)
    @url = url
  end
  
end
