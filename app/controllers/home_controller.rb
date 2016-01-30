class HomeController < ApplicationController
  
  # @@data = File.read("public/painting.json")

  def show
    @painting = Painting.find(1)
  end
end
