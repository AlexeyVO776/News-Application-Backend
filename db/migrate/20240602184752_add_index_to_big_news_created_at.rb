class AddIndexToBigNewsCreatedAt < ActiveRecord::Migration[7.0]
  def change
    add_index :big_news, :created_at
  end
end
