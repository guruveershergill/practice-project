class AddImageToArticles < ActiveRecord::Migration[7.0]
  def change
  	add_column :articles, :image, :attachment
  end
end
