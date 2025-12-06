class FixBeerColumnName < ActiveRecord::Migration[8.1]
  def change
    rename_column :beers, :likes, :likes_count
  end
end
