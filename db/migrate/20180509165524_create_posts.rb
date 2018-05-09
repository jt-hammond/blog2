class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :user, foreign_key: true
      t.integer :post_like_count
      t.datetime :post_date
      t.string :status

      t.timestamps
    end
  end
end
