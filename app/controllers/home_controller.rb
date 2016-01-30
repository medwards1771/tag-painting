class HomeController < ApplicationController
  
#   @@json_file = File.read("public/painting.json")
#   @@json_object = JSON.parse(@@json_file)
#   @@image_identifier = @@json_object["data"]["images"]["rank-1"].first["filename"]
# => "76.79_SL1.jpg"

  def show
    @tag = Tag.new
    @painting = Painting.find(1)
    @tags = @painting.tags
  end

  def create_tags
    @tag = Tag.new(tag_params)
    if @tag.save
      tag_item = render_to_string(partial: 'tags/tag', locals: {tag: @tag})
      render json: {message: "Tag saved!", tag_item: tag_item}
    else
      render json: {errors: @tag.errors.full_messages}, status: 422
    end
  end

  private 

  def tag_params
    params.require(:tag).permit(:text, :painting_id)
  end
end
