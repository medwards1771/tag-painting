class AddPaintingIdColumnToTags < ActiveRecord::Migration
  def change
    add_column :tags, :painting_id, :integer
  end
end
