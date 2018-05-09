class AddTagToTagJunction < ActiveRecord::Migration[5.1]
  def change
    add_reference :tag_junctions, :tag, foreign_key: true
  end
end
