class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :username
       t.integer :category_id
      t.timestamps
    end
  end
end
