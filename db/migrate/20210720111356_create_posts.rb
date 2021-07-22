class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.belongs_to :category
      t.string :title
      t.text :contents
      t.string :image

      t.timestamps
    end
  end
end
