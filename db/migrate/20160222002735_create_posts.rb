class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :posttext
      t.string :postauthor

      t.timestamps null: false
    end
  end
end
