class AddUrlToBeers < ActiveRecord::Migration[6.0]
  def change
    add_column :beers, :url, :string
  end
end
