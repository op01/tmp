class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.string :author
      t.timestamp :published_at
      t.boolean :published

      t.timestamps
    end
  end
end
