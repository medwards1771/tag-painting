class AddUrlToPaintings < ActiveRecord::Migration
  def change
    add_column :paintings, :url, :string
  end
end
