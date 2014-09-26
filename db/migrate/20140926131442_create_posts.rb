class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :user_id
      t.string :content
      t.string :content
      t.integer :category

      t.timestamps
    end
  end
end
