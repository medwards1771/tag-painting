class AddColumnToTags < ActiveRecord::Migration
  def change
    add_column :tags, :text, :string
  end
end
