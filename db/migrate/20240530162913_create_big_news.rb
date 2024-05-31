class CreateBigNews < ActiveRecord::Migration[7.0]
  def change
    create_table :big_news do |t|
      t.string :title
      t.text :content
      t.string :image
      t.boolean :visible

      t.timestamps
    end
  end
end
