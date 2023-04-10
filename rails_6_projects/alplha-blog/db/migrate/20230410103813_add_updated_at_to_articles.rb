class AddUpdatedAtToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :updated_at, :datetime
  end
end
