class AddColumnTitleToPaintings < ActiveRecord::Migration
  def change
    add_column :paintings, :title, :string
  end
end
