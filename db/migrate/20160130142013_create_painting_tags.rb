class CreatePaintingTags < ActiveRecord::Migration
  def change
    create_table :painting_tags do |t|
      t.integer :painting_id
      t.integer :tag_id
      t.timestamps null: false
    end
  end
end
