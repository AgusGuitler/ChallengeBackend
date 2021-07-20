class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :contents
      t.string :category
      t.string :image
      t.date :date_of_creation

      t.timestamps
    end
  end
end
